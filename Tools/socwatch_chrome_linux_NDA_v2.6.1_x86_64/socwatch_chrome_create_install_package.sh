#!/bin/bash
# ##################################################################################
# INTEL CONFIDENTIAL
# Copyright 2014 - 2017 Intel Corporation

# The source code contained or described herein and all documents related
# to the source code ("Material") are owned by Intel Corporation or its
# suppliers or licensors. Title to the Material remains with Intel Corporation
# or its suppliers and licensors. The Material contains trade secrets and
# proprietary and confidential information of Intel or its suppliers and
# licensors. The Material is protected by worldwide copyright and trade secret
# laws and treaty provisions. No part of the Material may be used, copied,
# reproduced, modified, published, uploaded, posted, transmitted, distributed,
# or disclosed in any way without Intel's prior express written permission.

# No license under any patent, copyright, trade secret or other intellectual
# property right is granted to or conferred upon you by disclosure or delivery
# of the Materials, either expressly, by implication, inducement, estoppel or
# otherwise. Any license under such intellectual property rights must be express
# and approved by Intel in writing.
# #################################################################################

#
# A rudimentary script to create a package containing
# the driver and support files needed on the Chrome
# target device.

# Set adb device number
BASE_DIR="$PWD"
DRIVER_MAJOR=2
DRIVER_MINOR=6
TARGET_DIR_NAME="socwatch_chrome_CUSTOM"
PACKAGE_EXT="tar.gz"
SOCPERF_DRIVER="socperf2_0.ko"
#PACKAGE_EXT="zip"

usage()
{
    echo ""
    #echo "Usage: $0";
    echo "Usage: ./socwatch_chrome_create_install_package";
    echo "*** Make sure you are in root of the SoCWatch Chrome package ***";
	echo "Default target device package created will be ${TARGET_DIR_NAME}.${PACKAGE_EXT}";
	echo ""
}

check_target_dir()
{
    target_dir="$1";
    if [ -d $target_dir ]; then
        echo
        echo   Directory $target_dir already exists.
        echo   Deleting directory.
        rm -rf ${target_dir}
        if [ -f ${target_dir}.${PACKAGE_EXT} ]; then
            echo   Package $target_dir.${PACKAGE_EXT} already exists.
            echo   Deleting tarball.
            rm -f ${target_dir}.${PACKAGE_EXT}
	    fi
	fi
}

make_dir()
{
    dir_name=$1;
    echo "Told to create dir ${dir_name}";
    mkdir -p ${dir_name};
    retVal=$?;
    if [ $retVal -ne 0 ]; then
        echo "ERROR creating dir ${dir_name}";
        usage;
        exit 255; # -1
    fi
    return $retVal;
}

copy_file()
{
    file_name=$1; dir_name=$2;
    echo "Copying ${file_name} to ${dir_name}";
    cp -r ${file_name} ${dir_name};
    retVal=$?;
    if [ $retVal -ne 0 ]; then
        echo "ERROR copying ${file_name}";
        if [ ${file_name: -3} == ".ko" ]; then
            echo "ERROR Have you compiled the driver yet?";
        fi
        rm -rf ${dir_name}
        exit 255; #-1
    fi
    return $retVal;
}

check_file()
{
    file_name=$1;
    retVal=0
    if [ ! -f "$file_name" ]; then
        echo "${file_name} not found";
        retVal=1
    fi
    return $retVal;
}

socperf_driver_warn()
{
    echo "*****************************"
    echo "*****************************"
    echo "Unable to add the socperf driver to the install package."
    echo "If the target system is Atom based, this is an ERROR that must"
    echo "be handled - the socperf driver is required.  If the target"
    echo "system is Core based, the socperf driver is not required and"
    echo "the this message can be safely ignored."
    echo "*****************************"
    echo "*****************************"
}

while [ $# -gt 0 ]; do
    case $1 in
        *) usage; exit 255;;
    esac
    shift
done

#if [ "Z$dir_name" != "Z" ]; then
#    TARGET_DIR=${dir_name};
#else
#    TARGET_DIR="${BASE_DIR}/socwatch"
#fi

TARGET_DIR="${BASE_DIR}/${TARGET_DIR_NAME}"
DRIVER_DIR="${TARGET_DIR}/driver"

# check target dir existence - delete if it alreday exists
check_target_dir $TARGET_DIR

#echo "Using BASE_DIR = ${BASE_DIR}"
echo "Using TARGET_DIR = ${TARGET_DIR}"
#echo "Using DRIVER_DIR = ${DRIVER_DIR}"

# Create the various directories...
make_dir $TARGET_DIR
make_dir $DRIVER_DIR

# ...and copy over driver files...
copy_file drivers/socwatch${DRIVER_MAJOR}_${DRIVER_MINOR}.ko ${DRIVER_DIR}
check_file drivers/${SOCPERF_DRIVER}
if [ $? -ne 0 ]; then
    socperf_driver_warn
else
    copy_file drivers/${SOCPERF_DRIVER} ${DRIVER_DIR}
fi
# ...and finally, the userspace files
copy_file socwatch ${TARGET_DIR}
copy_file setup_socwatch_env.sh ${TARGET_DIR}
copy_file configs ${TARGET_DIR}
copy_file output_configs ${TARGET_DIR}
copy_file plugins ${TARGET_DIR}/plugins/
copy_file libs ${TARGET_DIR}/libs/
copy_file valleyview_soc ${TARGET_DIR}/valleyview_soc/
#copy_file tangier_sochap ${TARGET_DIR}/tangier_sochap/
#copy_file anniedale_sochap ${TARGET_DIR}/anniedale_sochap/
copy_file cherryview_soc ${TARGET_DIR}/cherryview_soc/
copy_file broxton_soc ${TARGET_DIR}/broxton_soc/

# OK, all done -- create the tarball
echo -n "Creating tarball...";
#zip -r ${TARGET_DIR_NAME}.zip ${TARGET_DIR_NAME} &> /dev/null
tar cvzf ${TARGET_DIR_NAME}.tar.gz ${TARGET_DIR_NAME} &> /dev/null

echo "All done."
exit 0
