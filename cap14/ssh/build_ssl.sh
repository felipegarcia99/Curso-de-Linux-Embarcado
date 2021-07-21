## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/ssh/openssl_build"

# definir o caminho dos códigos-fontes
export SOURCE="/home/felipe/texasSDK/board-support/ssh/openssl-1.1.1j"

## INÍCIO ##

# abrir a pasta do código-fonte OpenSSL
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar (perceber o Configure iniciando com maiúscula)
./Configure linux-armv4 \
	--prefix=$RAIZ \
	--openssldir=ssl shared

# compilar
make -j9

# instalar
make -j9 install
