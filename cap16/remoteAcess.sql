--Caso, durante a instalação, o MySQL não permitir conexão remota, aqui vai a solução:

CREATE USER 'device1'@'169.254.61.230' IDENTIFIED BY '12345678';
GRANT CREATE, ALTER, DROP, INSERT, UPDATE, DELETE, SELECT, REFERENCES, RELOAD on *.* TO 'device1'@'169.254.61.230' WITH GRANT OPTION;
FLUSH PRIVILEGES;

sudo ufw allow from 169.254.61.230 to any port 3306
