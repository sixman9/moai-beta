#!/bin/bash
gypifyDir=$(pwd)/contrib/gyp

vsDirAbs=$(pwd)/vs2008

#echo $vsDirAbs

gypOutFile=moai-open-$(basename "$vsDirAbs")-sln.gyp

$gypifyDir/gypify.py --sln="$vsDirAbs"/moai-open.sln > ./"$gypOutFile"


#sed calls are work-arounds 4 stuff that should've probably been done in gypify.py
#Remove absolute project path from GYP paths
#sed -i 's+'"$vsDirAbs"'++g' ./"$gypOutFile"

#Remove erroneous '/../../' from GYP paths
#sed -i 's+'"\/\.\.\/\.\.\/"'++g' ./"$gypOutFile"

#Remove erroneous '/.' from GYP paths
#sed -i 's+'"\/\."'++g' ./"$gypOutFile"
