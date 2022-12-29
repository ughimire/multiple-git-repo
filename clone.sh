#!/bin/sh
# You can use this command into your terminal to clone all repository listed on repo.txt file: bash clone.sh *.txt
readarray array <<<$(cat "$@")

#mkdir -p ~/git && cd ~/git
cd ../wp-content/plugins/ #// Your Parent Folder Directory
for element in ${array[@]}; do
  base_name=$(basename $element)
  folder_name=${base_name/.git/""}

  #rm -rf $folder_name // You can enable only if you want to remove existing folder ( may be git folder )
  echo "clonning $element into $PWD/$folder_name"
  git clone $element
done
