#!/bin/bash
# op.sh
# Mostra os 5 últimos posts da One Piece Ex
# 
# Trauvin, Agosto de 2020

URL=https://onepieceex.net

# O padrão são linhas iniciadas com letras maiúsculas
# Ignora tudo até a linha Capa do volume 97
# E por fim, mostra os 5 últimos posts da galera da OPX

lynx -dump -nolist "$URL" |
	grep '^[A-Z]' |
	sed '1,/^Capa do Volume 97/ d' |
	head  -n 5  
	
	

