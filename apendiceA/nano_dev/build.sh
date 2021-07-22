## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho da pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/nano_build"

# definir o caminho da pasta do código-fonte
export SOURCE="/home/felipe/texasSDK/board-support/nano-5.6.1-RASCUNHO"

## INÍCIO ##

# abrir a pasta do código-fonte nano
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar
#./configure --help
./configure \
	--prefix=$RAIZ \
	--host=arm-linux-gnueabihf \
	--disable-libmagic

# compilar
make -j9

# instalar
make -j9 install
