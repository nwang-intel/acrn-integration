# **********************************************************************************
#  This file is provided under a dual BSD/GPLv2 license.  When using or
#  redistributing this file, you may do so under either license.

#  GPL LICENSE SUMMARY

#  Copyright(c) 2015 Intel Corporation.

#  This program is free software; you can redistribute it and/or modify
#  it under the terms of version 2 of the GNU General Public License as
#  published by the Free Software Foundation.

#  This program is distributed in the hope that it will be useful, but
#  WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
#  General Public License for more details.

#  Contact Information:
#  SoC Watch Developer Team <socwatchdevelopers@intel.com>
#  Intel Corporation,
#  1906 Fox Drive,
#  Champaign, IL 61820

#  BSD LICENSE

#  Copyright(c) 2015 Intel Corporation.

#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions
#  are met:

#    * Redistributions of source code must retain the above copyright
#      notice, this list of conditions and the following disclaimer.
#    * Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in
#      the documentation and/or other materials provided with the
#      distribution.
#    * Neither the name of Intel Corporation nor the names of its
#      contributors may be used to endorse or promote products derived
#      from this software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
#  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
#  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
#  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
#  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
#  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
#  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
#  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
#  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# **********************************************************************************
export SOCWATCH_INSTALL_PATH=`pwd`
export SOCWATCH_BASE_DIR=${SOCWATCH_INSTALL_PATH}
export SOCPERF_BASE_DIR=${SOCWATCH_BASE_DIR}
export PATH="${SOCWATCH_INSTALL_PATH}:${PATH}"
export LD_LIBRARY_PATH="${SOCWATCH_INSTALL_PATH}/libs:${LD_LIBRARY_PATH}"

echo "Using SOCWATCH_BASE_DIR = $SOCWATCH_BASE_DIR"
echo "Using SOCPERF_BASE_DIR = ${SOCPERF_BASE_DIR}"
echo ""
echo "If you haven't loaded the drivers yet, please do so."
echo "Check the user guide to determine which drivers to"
echo "load, and the order in which to load them."