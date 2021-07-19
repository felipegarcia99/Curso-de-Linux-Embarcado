sudo apt-get update

# Pacotes necessários para compilação cruzada
sudo apt-get install linux-headers-`uname -r` bison build-essential dkms flex gcc cpp g++ libncurses5-dev make 

# Pacote necessário para a compilação do kernel
sudo apt install libssl-dev

# Adicionar o compilador cruzado ao PATH permanentemente
# (OBS.: Esse comando automatiza os passos mostrados no trabalho, na página 70)
echo "export PATH=$PATH:/home/felipe/texasSDK/linux-devkit/sysroots/x86_64-arago-linux/usr/bin" >> ~/.profile