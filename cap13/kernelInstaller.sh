# Transferência dos kernel e do arquivo de device tree
cd ../kernel_build/
cp am335x-boneblack.dtb zImage ../rootfs/boot/

# Transferência dos módulos
cp -r lib ../rootfs/ && cd ../rootfs