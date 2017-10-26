#!/system/bin/sh

z=`pwd`

unzip -oq binutils_2.25_armel.zip; wait $!
unzip -oq adialog_1.01_armel.zip; wait $!
unzip -oq ndk-sysroot-armel-23_r12b_all.zip; wait $!
unzip -oq ndk-misc_r12b_armel.zip; wait $!
unzip -oq android-pre-233-libc-fix_2.3.2_armel.zip; wait $!
unzip -oq project-ctl_1.0_armel.zip; wait $!
unzip -oq cctools-examples_1.0_all.zip; wait $!
unzip -oq build-essential-gcc_1.1_all.zip; wait $!

chmod +x cctools/bin/*
cp -rf cctools/* ~/cctools/
rm -rf $z/cctools