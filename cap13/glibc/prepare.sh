# Download do código-fonte
cd ~/Downloads/
wget https://ftp.gnu.org/gnu/libc/glibc-2.32.tar.xz

# Extração
tar -xf glibc-2.32.tar.xz

# Movendo o código-fonte para a pasta “board-support”
mv glibc-2.32 ~/texasSDK/board-support

# Clonando a pasta
cd ~/texasSDK/board-support
cp -r glibc-2.32 glibc-2.32-RASCUNHO