#!/system/bin/sh

chmod +x ./unzip
find . -regex '.*\.zip' -exec sh -c "./unzip -o \"{}\" -d ~/" \;
if [ -f ~/cctools/bin/set-default-compiler-clang ]; then
    sed -i 's/\${CCTOOLSDIR}/~\/cctools/g' ~/cctools/bin/*
    sed -i 's/com.pdaxrom.cctools\/root/com.spartacusrex.spartacuside/g' ~/cctools/bin/*
    cd ~/cctools/bin && sh ~/cctools/bin/set-default-compiler-clang
fi
ln -sf ~/cctools/bin/aclocal-1.14 ~/cctools/bin/aclocal
ln -sf ~/cctools/bin/automake-1.14 ~/cctools/bin/automake

rm -f ~/pkgdesc ~/postinst ~/prerm &>/dev/null
