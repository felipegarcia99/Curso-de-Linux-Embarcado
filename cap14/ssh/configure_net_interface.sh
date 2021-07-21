# Configurar interface de rede cabeada:
sudo ip ad add 169.254.61.229/16 dev enp2s0

# Conectar SSH:
ssh root@169.254.61.230

# Comando scp:
scp test.txt root@169.254.61.230:/home
