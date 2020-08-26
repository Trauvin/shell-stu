#!/bin/bash
# debug-categorizado.sh
#
# Exemplo de debug categorizado em três níveis

DEBUG=${1:-0}	# passe o nível pelo $1

Debug() {
	[ $1 -le $DEBUG ] || return
	local prefixo
	case "$1" in
		1) prefixo="-- ";;
		2) prefixo="--- ";;
		3) prefixo="---- ";;
		*) echo "Mensagem não cateorizada: $*"; return;;
	esac
	shift

	echo $prefixo$* # >> log.txt
}

Debug 1 "Início do Programa"

i=0
max=5
echo "Contando até $max"

Debug 2 "Vou entrar no while"

while [ $i -ne $max ]
do
	Debug 3 "Valor de \$i antes de incrementar: $i"
	let i=$i+1
	Debug 3 "Valor de \$i depois de incrementar: $i"
	
	echo "$i..."
done

Debug 2 "Saí do WHILE"

echo "terminei"

Debug 1 "Fim do Programa"
