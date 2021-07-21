# Criação da pasta “espelho” do sistema de arquivos do target
cd ~/texasSDK/board-support
mkdir rootfs && cd rootfs

# Criação dos diretórios essenciais
mkdir bin boot dev etc lib proc sbin sys usr
mkdir usr/bin usr/lib usr/sbin

# Modificação das permissões em /proc e /sys
chmod 555 proc sys