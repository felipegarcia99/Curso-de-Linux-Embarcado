# definição de variáveis de ambiente

SOURCE="/home/felipe/texasSDK/board-support/ssh/openssh-8.4p1"
SSL_BUILD="/home/felipe/texasSDK/board-support/ssh/openssl_build"
ZLIB_BUILD="/home/felipe/texasSDK/board-support/ssh/zlib_build"
ROOTFS="/home/felipe/texasSDK/board-support/ssh/transferencia-teste"


# construindo pastas alvo, caso não existam
mkdir $ROOTFS/usr/
mkdir $ROOTFS/usr/{lib,bin,sbin,libexec}
mkdir $ROOTFS/usr/local/
mkdir $ROOTFS/usr/local/{bin,etc}

# copiar zlib
cp -a $ZLIB_BUILD/lib/libz*.so* $ROOTFS/usr/lib

# copiar openssl
cp -a $SSL_BUILD/lib/lib*.so* $ROOTFS/usr/lib
cp $SSL_BUILD/bin/c_rehash $ROOTFS/usr/bin
cp $SSL_BUILD/bin/openssl $ROOTFS/usr/bin

# COPIAR SSH
cp $SOURCE/sshd $ROOTFS/usr/sbin
cp $SOURCE/{scp,sftp,ssh,ssh-add,ssh-agent,ssh-keygen,ssh-keyscan} \
$ROOTFS/usr/local/bin/
cp $SOURCE/{sftp-server,ssh-keysign,moduli} $ROOTFS/usr/libexec/
cp $SOURCE/{sshd_config,ssh_config} $ROOTFS/usr/local/etc/
cp $SOURCE/ssh_host_* $ROOTFS/usr/local/etc/
