## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho da pasta de saída (OBS.: outros itens foram adicionados na pasta build, por isso o /usr no final)
export RAIZ="/home/felipe/texasSDK/board-support/lighttpd_build/usr"

# definir o caminho da pasta do código-fonte
export SOURCE="/home/felipe/texasSDK/board-support/lighttpd-1.4.59-RASCUNHO"

# definir o caminho do pcre
export PCRE_BUILD="/home/felipe/texasSDK/board-support/pcre_build"

## INÍCIO ##

# abrir a pasta do código-fonte lighttpd
cd $SOURCE

# limpar compilações anteriores
make distclean

# configurar
#./configure --help
./configure \
	--prefix=$RAIZ \
	--host=arm-linux-gnueabihf \
	--enable-shared \
	--without-zlib \
	--without-bzip2 \
	--disable-ipv6 \
	PCRECONFIG=$PCRE_BUILD/bin/pcre-config \
	PCRE_LIB=$PCRE_BUILD/lib/libpcre.a \
	CFLAGS="$CFLAGS -DHAVE_PCRE_H=1 -DHAVE_LIBPCRE=1 -I$PCRE_BUILD/include"

# compilar
make -j9

# instalar
make -j9 install

# LEMBRAR DE COPIAR O SCRIPT install_lighttpd.sh JUNTO COM OS OUTROS
