## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CC=arm-linux-gnueabihf-gcc
export RANLIB=arm-linux-gnueabihf-ranlib
export STRIP=arm-linux-gnueabihf-strip

# definir o caminho pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/glibc_build"

## INÍCIO ##

# abrir a pasta de saída
cd $RAIZ

# configurando a compilação com ./configure
/home/felipe/texasSDK/board-support/glibc-2.32-RASCUNHO/./configure \
	--prefix= \
	--host=arm-linux-gnueabihf

# limpar compilações anteriores
make distclean

# compilar
make -j9

# instalar
make -j9 install DESTDIR=$RAIZ

