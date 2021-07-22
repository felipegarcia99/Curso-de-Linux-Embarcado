# Download dos códigos-fonte do GNU nano (ou um ou o outro)
wget https://www.nano-editor.org/dist/v5/nano-5.6.1.tar.xz
git clone git://github.com/madnight/nano.git

# Descompactação
tar -xf nano-5.6.1.tar.xz

# Movendo para a pasta "board-support" do SDK
mv nano-5.6.1 ~/texasSDK/board-support/

# Clonando a pasta
cd ~/texasSDK/board-support
cp -r nano-5.6.1/ nano-5.6.1-RASCUNHO