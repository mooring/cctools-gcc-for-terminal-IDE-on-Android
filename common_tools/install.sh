#!/system/bin/sh

chmod +x ./unzip
find . -regex '.*\.zip' -exec sh -c "./unzip -o \"{}\" -d ~/" \;
sed -i 's/\${CCTOOLSDIR}/~\/cctools/g' ~/cctools/bin/*
rm -f ~/pkgdesc ~/postinst ~/prerm &>/dev/null
