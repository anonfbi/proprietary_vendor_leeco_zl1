#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 Paranoid Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

set -e

DEVICE=zl1
VENDOR=leeco

# FILE=LE_ZL1_LEX720-CN-FN-WAXCNFN5902607031S-5.9.026S.zip
# REMOTE=https://drive.google.com/file/d/0BwRnZl5YW8NmbEtjX2dOSUExWlk
FILE=LE_ZL1_LEX720-CN-FN-WAXCNFN5902303282S-5.9.023S.zip
REMOTE=http://g3.letv.cn/222/8/95/scmauto/0/dailybuild/connect/cn/le_zl1/stable_023/20170328/lex720_zl1_stable_023_20170120_WAXCNFN5902303282S_20170328_122431_whole_netcom_user

MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$MY_DIR" ]]; then MY_DIR="$PWD"; fi

ROOT="$MY_DIR"/../../..

HELPER="$ROOT"/vendor/blobscript/extract_utils.sh
if [ ! -f "$HELPER" ]; then
    echo "Unable to find helper script at $HELPER"
    exit 1
fi
. "$HELPER"

clean_vendor=false

while [ "$1" != "" ]; do
    case $1 in
        -p | --path )           shift
                                SRC=$1
                                ;;
        -s | --section )        shift
                                SECTION=$1
                                ;;
        -c | --clean-vendor )   clean_vendor=true
                                ;;
        -w | --download )       download=true
                                ;;
    esac
    shift
done

if [ -z "$SRC" ]; then
    SRC=adb
fi

setup_vendor "$DEVICE" "$VENDOR" "$ROOT" false $clean_vendor

if [ "$download" = "true" ]; then
    SRC="$FILE"
    download "$SRC"
fi;

extract "$MY_DIR"/proprietary-files.txt "$SRC" "$SECTION"

"$MY_DIR"/setup-makefiles.sh
