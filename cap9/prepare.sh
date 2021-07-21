# Baixa o u-boot mais atual (mas não é preciso, pois o pacote já vem no SDK Texas Instruments)
git clone git://git.denx.de/u-boot.git

# Clonando a pasta dos códigos-fonte
cd ~/texasSDK/board-support
cp -r u-boot-2019.01+gitAUTOINC+8b90adfb16-g8b90adfb16/ u-boot-2019.01-RASCUNHO
cd /home/felipe/texasSDK/board-support/u-boot-2019.01-RASCUNHO