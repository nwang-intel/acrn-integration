#! /bin/sh
pathx="/sys/devices/system/cpu"

expCpuFrq=2400000  # cpu default frq = 2.4Hz=2.4*1000*1000

changeCpuFrq()
{	
	echo "change $Type cpuFrq=$frq"
	if [ `expr match $frq '.*\(.\)'` = "M" -o `expr match $frq '.*\(.\)'` = "m" ]; then
		tmp=`echo ${frq%M*}`
		#frq=`echo "scale=0;$tmp*100/1000/2.4" | bc -l`
		if [ "$Type" = "AaaG" ]; then
			frq=`awk -v x=$tmp 'BEGIN{printf "%.0f\n",x*100/1000/2.4}'`
		else
			frq=`awk -v x=$tmp 'BEGIN{printf "%.0f\n",x*1000}'`	
		fi
		echo "tmp=$tmp;frq=$frq"

	elif [ `expr match $frq '.*\(.\)'` = "G" -o `expr match $frq '.*\(.\)'` = "g" ]; then
		tmp=`echo ${frq%G*}`
		if [ "$Type" = "AaaG" ]; then
			frq=`awk -v x=$tmp 'BEGIN{printf "%.0f\n",x*100/2.4}'`
		else
			frq=`awk -v x=$tmp 'BEGIN{printf "%.0f\n",x*1000*1000}'`
		fi
		echo "tmp=$tmp;frq=$frq"
	else
		frq=$frq
	fi

	#echo "$adbsh echo $frq > $pathx/intel_pstate/max_perf_pct"
	#echo "$adbsh echo $frq > $pathx/intel_pstate/min_perf_pct"
	if [ "$Type" = "AaaG" ]; then
		expfrq=$(($expCpuFrq*$frq/100))
		expfrqMax=$(($expCpuFrq*$frq/100*101/100))
		expfrqMin=$(($expCpuFrq*$frq/100*98/100))
		$adbsh "echo $frq > $pathx/intel_pstate/max_perf_pct"
		$adbsh "echo $frq > $pathx/intel_pstate/min_perf_pct"
	else
		#echo $frq > $pathx/intel_pstate/max_perf_pct
		#echo $frq > $pathx/intel_pstate/min_perf_pct
		
		expfrq=$(($frq*1))
		expfrqMax=$(($expfrq*101/100))
		expfrqMin=$(($expfrq*98/100))
		for i in $( seq 0 2 )
			do
				#echo "echo $expfrq > $pathx/cpu$i/cpufreq/scaling_min_freq"
				echo "echo $expfrq > $pathx/cpu$i/cpufreq/scaling_max_freq"
				echo "$expfrq" > $pathx/cpu$i/cpufreq/scaling_max_freq
				echo "$expfrq" > $pathx/cpu$i/cpufreq/scaling_min_freq
			done

	fi
	sleep 1
}


checkCpuFrq()
{	
	#expfrq=$(($expCpuFrq*$frq/100))
	#expfrqMin=$(($expCpuFrq*$frq/100*98/100))
	echo "exp=$expfrq  Max=$expfrqMax  Min=$expfrqMin"
	
	if [ $maxCpuid -eq 0 ]; then
		res=`$adbsh cat $pathx/cpu0/cpufreq/scaling_cur_freq`
		echo "cpu0x expValfrq=$expfrq actualfrq=$res"
		if [ $res -gt $expfrqMin -a  $res -lt $expfrqMax ]; then
			echo ""
		else
			echo "$Type cpu$maxCpuid failed, pls check"
		fi
	else
		for i in $( seq 0 $maxCpuid )
			do
				if [ $i -eq $maxCpuid ]; then
					continue
				else 
					#res=`$adbsh cat $pathx/cpu$i/xx`
					if [ "$Type" = "AaaG" ]; then
						res=`$adbsh "cat $pathx/cpu$i/cpufreq/scaling_cur_freq"`
					else
						res=`$adbsh cat $pathx/cpu$i/cpufreq/scaling_cur_freq`
					fi

					#echo "$adbsh cat $pathx/cpu$i/cpufreq/scaling_cur_freq"
					echo "cpu$i expValfrq=$expfrq  actvualfrq=$res"
					if [ $res -gt $expfrqMin -a  $res -lt $expfrqMax ]; then
						echo ""
					else
						echo "$Type cpu$i failed, pls check"
					fi
				fi

			done
	fi
}

usage()
{
	echo "-h : help"
	echo "check LaaG: ./checkCpuFrq LaaG frqVal(800M,900M,1.8G,2.3G,2.4G,..) or frqValRate(33~100)"
	echo "check AaaG: ./checkCpuFrq AaaG frqVal(800M,900M,1.8G,2.3G,2.4G,..) or frqValRate(33~100)"
}


Type=$1
frq=$2
adbsh="" 
expfrq=""
expfrqMin=""
expfrqMax=""

if [ "$Type" = "SOS" ]; then
	maxCpuid=0
elif [ $# -gt 2 ]; then
	maxCpuid=$3
else
	maxCpuid=3
fi

# $1=Type,such as SOS&Laag&Aaag; $2=frq; $3=UOS's maxCpuid,default vaule is 3
# change SOS's cpufrq
if [ "$Type" = "AaaG" ]; then
	tmp=`adb root`
	echo $tmp
	if [ -z "$tmp" ]; then
		echo "Please launch UOS normally first."
		exit 1
	else
		adbsh="adb shell"
	fi
fi	
 
if [ "$Type" = "-h" ]; then
	usage
else
	changeCpuFrq
	checkCpuFrq
fi
