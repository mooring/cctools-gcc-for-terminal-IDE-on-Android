#!/system/bin/sh

chmod +x ./unzip
find . -regex '.*\.zip' -exec sh -c "./unzip -o \"{}\" -d ~/" \;
if [ -f ~/cctools/bin/set-default-compiler-clang ]; then
    sed -i 's/\${CCTOOLSDIR}/~\/cctools/g' ~/cctools/bin/*
    cd ~/cctools/bin && sh ~/cctools/bin/set-default-compiler-clang
fi

rm -f ~/pkgdesc ~/postinst ~/prerm &>/dev/null
