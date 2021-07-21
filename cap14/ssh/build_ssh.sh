## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-
export CC=arm-linux-gnueabihf-gcc
export AR=arm-linux-gnueabihf-ar

# definir o caminho da pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/ssh/openssh_build"

# definir o caminho dos códigos-fontes
export SOURCE="/home/felipe/texasSDK/board-support/ssh/openssh-8.4p1"

# definir o caminho da compilação do zlib
export SSL_BUILD="/home/felipe/texasSDK/board-support/ssh/openssl_build"

# definir o caminho da compilação do openssl
export ZLIB_BUILD="/home/felipe/texasSDK/board-support/ssh/zlib_build"


## INÍCIO ##

# abrir a pasta do código-fonte OpenSSH
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar
./configure \
	--host=arm-linux-gnueabihf \
	--with-libs \
	--with-zlib=$ZLIB_BUILD \
	--with-ssl-dir=$SSL_BUILD \
	--disable-etc-default-login

# compilar
make -j9

# gerar chaves
ssh-keygen -t rsa -f ssh_host_rsa_key -N ""
ssh-keygen -t dsa -f ssh_host_dsa_key -N ""
