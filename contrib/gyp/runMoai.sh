#!/bin/bash
gypifyDir=$(pwd)


pushd $gypifyDir/../../distribute/moai-sdk/hosts/vs2010
$gypifyDir/gypify.py --sln=moai-host.sln
popd
