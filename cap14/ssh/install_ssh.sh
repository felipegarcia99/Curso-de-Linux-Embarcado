mkdir /var/empty
mkdir /var/empty/sshd
groupadd -g 35 sshd
useradd -u 35 -g 35 -c "sshd privsep" -d /var/empty/sshd -s /sbin/
