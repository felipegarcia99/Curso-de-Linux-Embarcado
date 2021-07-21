## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/busybox_build"

# definir o caminho da pasta do código-fonte
export SOURCE="/home/felipe/texasSDK/board-support/busybox-1.32.1-RASCUNHO"

## INÍCIO ##

# abrir a pasta do código-fonte do Busybox
cd $SOURCE

# limpar compilações anteriores (se houverem)
make distclean

# selecionar a configuração padrão/genérica do Busybox
make defconfig

# personalizar
make menuconfig

# compilar
make -j9

# instalar
make CONFIG_PREFIX=$RAIZ install

