for i in *.zip
do
    f=0
    j=`unzip -c $i metadata.json | grep uuid | cut -d \" -f4`
    for k in `ls ~/.local/share/gnome-shell/extensions/`
    do
        if [ $k == $j ]; then
            echo "Extension $k already exist skipping..!!"
            f=1
            break
        fi   
    done   
    if [ $f == 1 ]; then
        continue
    fi    
    echo "Unzipping $i found shell-name $j"
    echo "Creating Directory"
    mkdir -p ~/.local/share/gnome-shell/extensions/$j
    echo "Installing Extension"
    unzip -q $i -d ~/.local/share/gnome-shell/extensions/$j
    echo "Enabling Extension"
    gnome-shell-extension-tool -e $j
done    


