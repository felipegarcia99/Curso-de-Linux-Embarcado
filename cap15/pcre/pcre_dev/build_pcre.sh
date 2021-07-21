## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho da pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/pcre_build"

# definir o caminho da pasta do código-fonte
export SOURCE="/home/felipe/texasSDK/board-support/pcre-8.44"

## INÍCIO ##

# abrir a pasta do código-fonte pcre
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar
./configure \
	--prefix=$RAIZ \
	--host=arm-linux-gnueabihf \

# compilar
make -j9

# instalar
make -j9 install
