lb config -d bookworm \
          --debian-installer live \
          --debian-installer-distribution bookworm \
          --debian-installer-gui true \
          --archive-areas "main contrib non-free non-free-firmware" \
          --debootstrap-options "--variant=minbase --include=gnupg2,curl" \
          --bootappend-live "boot=live components username=live hostname=debian-live" \
          --security true \
          --updates true \
          --firmware-binary true
          
sudo lb build
