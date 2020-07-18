#!/bin/bash

# killing bundling for now until work out babel issue
# "Cannot find preset babel/env relative to directory public"
#./install_bundle_deps.sh

npm rebuild
cd zombie-lord 
npm i && npm rebuild
cd ../public/voodoo
npm i && npm rebuild
# cd ../../endbacker
# npm i && npm rebuild
cd ../../zombie-lord/custom-launcher
npm i && npm rebuild
cd ../../

echo 
echo
read -p "Want to run setup_machine script? (you only need to do this the first time you install BG, or when you update new version) y/n " -n 1 -r
echo
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 0
fi
./setup_machine.sh

#./make_bundle.sh

