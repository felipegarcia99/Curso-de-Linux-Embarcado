## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CC=arm-linux-gnueabihf-gcc
export AR=arm-linux-gnueabihf-ar

# definir o caminho pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/ssh/zlib_build"

# definir o caminho dos códigos-fontes
export SOURCE="/home/felipe/texasSDK/board-support/ssh/zlib-1.2.11"

## INÍCIO ##

# abrir a pasta do código-fonte zlib
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar
./configure --prefix=$RAIZ

# compilar
make -j9

# instalar
make -j9 install
