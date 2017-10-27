#!/system/bin/sh

chmod +x ./unzip
find . -regex '.*\.zip' -exec sh -c "./unzip -o \"{}\" -d ~/" \;
rm -f ~/pkgdesc ~/postinst ~/prerm &>/dev/null
