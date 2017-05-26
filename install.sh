folderName="ViperModule"

installDirectory=~/Library/Developer/Xcode/Templates/Custom/"${folderName}"

echo "Templates will be installed to ${installDirectory}"

if [ -d "${installDirectory}" ]; then
    rm -r "${installDirectory}"
fi

mkdir -p "${installDirectory}"

cp -r *.xctemplate "${installDirectory}"

echo "ViperModule successfully installed!"
