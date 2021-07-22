# Download dos códigos-fonte
cd ~/Downloads/

# pcre
wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz
# lighttpd
wget https://download.lighttpd.net/lighttpd/releases-1.4.x/lighttpd-1.4.59.tar.gz

# Extração
tar -xf pcre-8.44.tar.gz
tar -xf lighttpd-1.4.59.tar.gz

# Movendo os códigos-fonte para a pasta “board-support”
mv pcre-8.44.tar.gz ~/texasSDK/board-support/
mv lighttpd-1.4.59.tar.gz ~/texasSDK/board-support/

# Clonando apenas a pasta lighttpd
cd ~/texasSDK/board-support/
cp lighttpd-1.4.59/ lighttpd-1.4.59-RASCUNHO/