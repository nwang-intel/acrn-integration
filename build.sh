#!/bin/bash


build_hypervisor_dm()
{
	echo "make hypervisor"
	#cd workspace/Demo
	echo `pwd`
	echo `ls`
        #pushd workspace/ACRN-Build/acrn-hypervisor
        pushd workspace/$1/acrn-hypervisor
	#echo `make clean && make PLATFORM=uefi` > ../../images/log.txt
	echo `ls`
	echo "make clean && make PLATFORM=uefi"
	make clean && make PLATFORM=uefi
	echo "copy acrn.efi to images"
	cp build/acrn.efi ../../images/
        popd
    
        echo "make devicemodel"
	#pushd workspace/ACRN-Build/acrn-devicemodel
        pushd workspace/$1/acrn-devicemodel
        echo "make clean && make all"
	make clean && make all
	#echo `make clean && make` > ../../images/log.txt
        cp build/acrn-dm ../../images/
        popd
}

add_remote() {
cat<<EOF >> config
[remote "upstream"]
        url = https://github.com/projectacrn/acrn-hypervisor.git
        fetch = +refs/pull/*:refs/remotes/upstream/pr/*
EOF
}

merge_pr() {
	git checkout master
	git merge --no-edit remotes/upstream/pr/$1/head
	if [[ $? != 0 ]] ;then
		echo "merge failed"
		exit 1
	fi 
}
build_master()
{
	echo "cloing acrn-hypervisor"
	if [ -x acrn-hypervisor ]; then
		rm -rf acrn-hypervisor
	fi
	git clone https://github.com/projectacrn/acrn-hypervisor.git
	
	cd acrn-hypervisor/.git
	add_remote
	git fetch upstream
	prn=`git branch -a | grep "remotes/upstream/pr" | awk -F'/' '{print $4}' | sort -n | tail -1`
	cd ..
	echo $prn
	echo "patching with pr$prn"
	merge_pr $prn
	echo "patching done successfull"
			
	cd /home/jenkins/mrb/master
	#mkdir master
	#pushd master
	echo "cleaning up"
	rm -rf *
	rm -rf .repo
	echo "repo sync"
	repo init -u ssh://android.intel.com/h/hypervisor/manifests -b hypervisor/master
	repo sync
	echo "replacing hypervisor"
	rm -rf hv
	#cp -r /home/jenkins/acnr-hypervisor/* .
	cd /home/jenkins/mrb/
	mv /home/jenkins/workspace/acrn-hypervisor master/
	mv master/acrn-hypervisor master/hv
	echo "replacing done successfully"
	cd master	
	echo "make clean;make all"
        make clean && make all	
	echo "create md5 file"
	cd /home/jenkins/mrb/master/pub
	rm md5file
	md5sum bxt_dbg_priv_key.pem >> md5file
	md5sum clearlinux.img >> md5file
	md5sum data.img >> md5file
	md5sum flash_AaaG.json >> md5file
	md5sum flash_LaaG.json >> md5file
	md5sum ifwi_gr_mrb_b1.bin >> md5file
	md5sum ioc_firmware_gp_mrb_fab_e.ias_ioc >> md5file
	md5sum md5file >> md5file
	md5sum native_boot.img >> md5file
	md5sum partition_desc.bin >> md5file
	md5sum sos_boot.img >> md5file
	md5sum sos_rootfs.img >> md5file

	echo "copy to webserver"
	cd /home/jenkins/mrb/master
        ssh root@10.239.81.186 "rm -rf /var/www/html/mrb_images/*"
	scp -r /home/jenkins/mrb/master/pub/* root@10.239.81.186:/var/www/html/mrb_images/
	echo "make finished"
}

#build_hypervisor_dm $1
build_master
