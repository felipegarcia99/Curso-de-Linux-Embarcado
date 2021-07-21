# Download do código-fonte
$ cd ~/Downloads/
$ wget https://busybox.net/downloads/busybox-1.32.1.tar.bz2

# Extração
$ tar -xvjf  busybox-1.32.1.tar.bz2

# Movendo o código-fonte para a pasta board-support
$ mv busybox-1.32.1 ~/texasSDK/board-support

# Clonando a pasta
$ cd ~/texasSDK/board-support
$ cp -r busybox-1.32.1 busybox-1.32.1-RASCUNHO