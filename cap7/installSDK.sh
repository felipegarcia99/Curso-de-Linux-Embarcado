## VARIÁVEIS DE AMBIENTE
# OBS.: É bom se atentar para a versão disponível no momento, visto que a versão usada no trabalho (06_00_00_07) não está mais disponível.
VERSION="07.03.00.005"
FILENAME="ti-processor-sdk-linux-am335x-evm-${VERSION}-Linux-x86-Install.bin"
LINK="http://software-dl.ti.com/processor-sdk-linux/esd/AM335X/latest/exports/ti-processor-sdk-linux-am335x-evm-${VERSION}-Linux-x86-Install.bin"

# Abrir a pasta de downloads
cd Downloads

# Baixar o SDK Texas Instruments
wget $LINK

# Permitir a execução
chmod +x $FILENAME

# Verificar se o sistema é 64-bit
uname −m

# Instalar o SDK
./$FILENAME