#!/system/bin/sh

chmod +x ./unzip

find . -regex '.*\.zip' -exec sh -c "./unzip -o \"{}\" -d ~/" \;

if [ -f ~/cctools/bin/set-default-compiler-gcc ]; then
    sed -i 's/\${CCTOOLSDIR}/~\/cctools/g' ~/cctools/bin/set-default-compiler-gcc
    sh ~/cctools/bin/set-default-compiler-gcc
fi

touch ~/.bash_aliases
sed -i '/cctools/d' ~/.bash_aliases
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cctools/lib' >> ~/.bash_aliases
echo 'export PATH=$PATH:$HOME/cctools/bin' >> ~/.bash_aliases

source ~/.bash_aliases

rm -f ~/pkgdesc ~/postinst ~/prerm &>/dev/null
