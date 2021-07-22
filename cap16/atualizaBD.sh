#!/bin/bash

# Um pequeno script, criado por mim, para atualizar a página do MySQL, de modo que se possa observar a página dinâmicamente.
# OBS.: Deve-se evitar usar a senha na linha de comando; use apenas como ferramenta de teste.
PASSWORD="lalala"

while :
do
	  mysql -u root -p${PASSWORD} -Bse "use devices; select * from sensores order by DataHora desc limit 10;"
	sleep 1
	clear
done
