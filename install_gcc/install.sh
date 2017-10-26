#!/system/bin/sh

z=`pwd`

unzip -qo libgcc-dev_4.9-1_armel.zip && wait $!
unzip -qo libstdc++-dev-armel_4.9-1_all.zip && wait $!
unzip -qo gmp_5.0.5_armel.zip && wait $!
unzip -qo gmp-dev_5.0.5_armel.zip && wait $!
unzip -qo isl_0.11.1_armel.zip && wait $!
unzip -qo isl-dev_0.11.1_armel.zip && wait $!
unzip -qo mpfr_3.1.1_armel.zip && wait $!
unzip -qo mpfr-dev_3.1.1_armel.zip && wait $!
unzip -qo cloog_0.18.0_armel.zip && wait $!
unzip -qo cloog-dev_0.18.0_armel.zip && wait $!
unzip -qo mpc_1.0.1_armel.zip && wait $!
unzip -qo mpc-dev_1.0.1_armel.zip && wait $!
unzip -qo gcc_4.9-1_armel.zip && wait $!

chmod +x cctools/bin/*
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/cc1
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/cc1plus
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/collect2
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/lto1
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/lto-wrapper
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/install-tools/*
chmod +x cctools/libexec/gcc/arm-linux-androideabi/4.9/plugin/*
rm -f cctools/bin/set-default-compiler-gcc
cp -rf cctools/* ~/cctools/

cd ~/cctools/bin

ln -sf gcc-4.9  gcc
ln -sf gcc-4.9  cc
ln -sf g++-4.9  g++
ln -sf g++-4.9  c++
ln -sf cpp-4.9  cpp
ln -sf gcov-4.9 gcov


sed -i '/cctools/d' ~/.bash_aliases
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cctools/lib' >> ~/.bash_aliases
echo 'export PATH=$PATH:$HOME/cctools/bin' >> ~/.bash_aliases

source ~/.bash_aliases

rm -rf $z/cctools
