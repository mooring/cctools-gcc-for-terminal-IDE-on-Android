#!/system/bin/sh

chmod +x ./unzip
find . -regex '.*\.zip' -exec sh -c "./unzip -oq \"{}\" -d ~/" \;