# cctools-gcc-for-terminal-IDE-on-Android

Terminal IDE App gives you the ability to runing shell in its env

the build-in `install_gcc` is as good as i known but with some library version old

so I do an stupid thing to adopt the cctools's build tool-chain to Terminal IDE on Android


## Step

1. copy all of those folders and files to your android diveces
2. open Terminal IDE , and press `install System` button on the first page if you not installed yet
3. press the Terminal IDE button step into the shell envieronment
4. in shell, mv all of the folders/files above to the shell `$HOME` folder
5. `cd install_gcc && sh install.sh && cd ..`
6. `cd install_build_essential && sh install.sh && cd ..`
8. `mv` hello.tgz the projects folder
9. go to the projects folder, uncompress the hello.tgz by `tar xf hello.tgz`
10. cd hello and `make`
11. run your first hellowolrd program by `./hello`

## Comments
    
install gcc first , build_essential is optional, common tools is optional too
    for detail , please read [Depends tree.pdf](https://github.com/mooring/cctools-gcc-for-terminal-IDE-on-Android/blob/master/depends-tree.pdf?raw=true) for detail

## Requirement 

install the Terminal IDE first [Google Play Address](https://play.google.com/store/apps/details?id=com.spartacusrex.spartacuside)


## Screenshot

![On MI Pad](https://github.com/mooring/cctools-gcc-for-terminal-IDE-on-Android/blob/master/screenshots/ccfortide.png?raw=true)

