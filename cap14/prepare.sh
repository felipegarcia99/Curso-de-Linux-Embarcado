# Criando a pasta “ssh” dentro de board-support
mkdir ~/texasSDK/board-support/ssh

# Download dos códigos-fonte
cd ~/Downloads/

# zlib
wget https://zlib.net/zlib-1.2.11.tar.gz
# OpenSSL
wget https://www.openssl.org/source/openssl-1.1.1j.tar.gz
# OpenSSH
wget https://openbsd.c3sl.ufpr.br/pub/OpenBSD/OpenSSH/portable/openssh-8.4p1.tar.gz

# Extração
tar -xf zlib-1.2.11.tar.gz
tar -xf openssl-1.1.1j.tar.gz
tar -xf openssh-8.4p1.tar.gz

# Movendo os códigos-fonte para a pasta “board-support/ssh”
mv zlib-1.2.11 ~/texasSDK/board-support/ssh
mv openssl-1.1.1j ~/texasSDK/board-support/ssh
mv openssh-8.4p1 ~/texasSDK/board-support/ssh