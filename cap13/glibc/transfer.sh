# RAIZ é o diretório do produto da compilação, definido no arquivo build.sh
cd ${RAIZ}/lib 
for file in libc libcrypt libdl libm libpthread libresolv libutil 
    > do
    > cp $file-*.so ~/texasSDK/board-support/rootfs/lib 
    > cp -d $file.so.[*0-9] ~/texasSDK/board-support/rootfs/lib
    > done 
cp -d ld*.so* ~/texasSDK/board-support/rootfs/lib