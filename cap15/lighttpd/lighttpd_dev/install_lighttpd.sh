# Criar usuário e grupo lighttpd
groupadd lighttpd
useradd -g lighttpd -d /var/www/html -s /sbin/nologin lighttpd

# Alterar o dono do arquivo e o grupo
chown lighttpd:root /etc/lighttpd/lighttpd.conf

# habilitando o lighttpd na inicialização (NÃO FUNCIONA por causa da falta do comando daemon no target)
# systemctl enable lighttpd
# systemctl start lighttpd
# systemctl status lighttpd
