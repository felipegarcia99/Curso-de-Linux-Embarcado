## VARIÁVEIS DE AMBIENTE ##

# definir a arquitetura
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

# definir o caminho pasta de saída
export RAIZ="/home/felipe/texasSDK/board-support/u-boot_build/"

# definir o caminho da pasta do código-fonte
export SOURCE="/home/felipe/texasSDK/board-support/u-boot-2019.01-RASCUNHO"

## INÍCIO ##

# abrir a pasta do código-fonte u-boot
cd $SOURCE

# limpar compilações anteriores
make O=$RAIZ distclean

# selecionar a configuração padrão do SoC da BeagleBone Black
make O=$RAIZ am335x_evm_defconfig

# personalizar
make O=$RAIZ menuconfig

# compilar
make O=$RAIZ -j9


