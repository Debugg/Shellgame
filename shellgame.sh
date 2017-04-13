#!/bin/bash
############################### VARIAVEIS
############# CODIGO DAS CORES
red='\e[7;49;91m'
xred='\e[1;49;91m'
yellow='\e[7;49;93m'
xyellow='\e[1;49;93m'
green='\e[7;49;92m'
xgreen='\e[1;49;92m'
blue='\e[7;49;34m'
xblue='\e[1;49;34m'
blue2='\e[7;49;96m'
xblue2='\e[1;49;96m'
white='\e[7;49;37m'
xwhite='\e[1;49;37m'
purple='\e[7;49;95m'
xpurple='\e[1;49;95m'
gres='\e[7;49;94m'
xgres='\e[1;49;94m'
############# COMANDOS DE TEXTO
NC='\e[0m'
bold=$(tput bold)
normal=$(tput sgr0)
############# SISTEMA
xfiles=""
escolha=""
escolha2=""
user=""
password=""
password2=""
artigo=""
######################
############# ATALHOS

######################################################################################### ▓
img(){
echo -e ${xyellow}${bold} "   ^^     ...                         ... "
echo -e ${xyellow}${bold} "        _|   |_                     _|   |_"
echo -e ${xyellow}${bold} "        | ... |_._._._._._._._._._._| ... |"
echo -e ${xyellow}${bold} "        | ||| |  o   SHELL GAME  o  | ||| |"
echo -e ${xyellow}${bold} "   ())  |[-|-]| [-|-]  [-|-]  [-|-] |[-|-]|  ())"
echo -e ${xyellow}${bold} "  (())) |     |---------------------|     | (()))"
echo -e ${xyellow}${bold} " (())())|     | RAMOS    &     LINO |     |(())())"
echo -e ${xyellow}${bold} " (()))()|[-|-]|  :::   .---.   :::  |[-|-]|(()))()"
echo -e ${xyellow}${bold} "    ||  |_____|_|_|_|__|_|_|__|_|_|_|_____|  ||"
echo -e ${xyellow}${bold} " ~ ~^^ @@@@@@@@@@@@@@/=======\@@@@@@@@@@@@@@ ^^~ ~"
}

loading(){
lx=""
ls="▓"
vv=0
echo -e ${xwhite}${bold}"# PREPARANDO FICHEIRO PARA A INSTALAÇÃO... "${normal}${NC}
echo -e ${xyellow}".-------."
echo -e ${xyellow}"| -----.-----."
echo -e ${xyellow}"| -----| ----|\""
echo -e ${xyellow}"| -----| ----- |"
echo -e ${xyellow}"| -----| ----- |"
echo -e ${xyellow}"'------| ----- |"
echo -e ${xyellow}"data...'-------'"
fake=""

sleep 3s
for i in {1..50}
do
	echo -e ${white}${bold}"# ESTADO DA INSTALAÇÃO: "${normal}${NC}
   	echo -e ${xyellow}"# INSTALANDO... "${NC}
	echo -e ${xyellow}"# |$lx|$vv %"${NC}
	echo "$fake"	
	lx="$lx$ls"
	vv=$((vv+2))

	case $vv in
		2) fake="" ;;
		8)	fake="# ./FILES/" ;;
	    12)	fake="# ./FILES/USERS/" ;;
		20)	fake="# ./FILES/JOGO/"  ;;
		24)	fake="# ./FILES/JOGO/MISSOES/"  ;;
		28)	fake="# ./FILES/JOGO/MISSOES/soma"  ;;
		32)	fake="# ((((1950 + 25) + 25) + 10) + 6) >> ./FILES/JOGO/MISSOES/soma"  ;;
		36)	fake="# madeira >> ./FILES/JOGO/MISSOES/soma" ;;
		40)	fake="# ./FILES/JOGO/MISSOES/divisao"  ;;
		42)	fake="# (((4000/100)/2)/200) >> ./FILES/JOGO/MISSOES/divisao"  ;;
		48)	fake="# argila >> ./FILES/JOGO/MISSOES/divisao" ;;
		50)	fake="# ./FILES/JOGO/MISSOES/raiz"  ;;
		56)	fake="# raiz de 25 >> ./FILES/JOGO/MISSOES/raiz"  ;;
		60)	fake="# ./FILES/JOGO/MISSOES/subtraçao"  ;;
		62)	fake="# 98423 - 10 - 3 - 410 - 8000 >> ./FILES/JOGO/MISSOES/subtraçao"  ;;
		68)	fake="# carvao >> ./FILES/JOGO/MISSOES/subtraçao" ;;
		70)	fake="# ./FILES/JOGO/MISSOES/multiplicaçao"  ;;
		76)	fake="# 1*0⁰ >> ./FILES/JOGO/MISSOES/multiplicaçao"  ;;
		78)	fake="# ouro >> ./FILES/JOGO/MISSOES/multiplicaçao" ;;
		80)	fake="# ./FILES/JOGO/MERCADO/" ;;
		82)	fake="# ./FILES/JOGO/MERCADO/argila"  ;;
		84)	fake="# 5 >> ./FILES/JOGO/MERCADO/argila" ;;
		86)	fake="# ./FILES/JOGO/MERCADO/carvao"  ;;
		88)	fake="# 15 >> ./FILES/JOGO/MERCADO/carvao" ;;
		90)	fake="# ./FILES/JOGO/MERCADO/zinco"  ;;
		92)	fake="# 20 >> ./FILES/JOGO/MERCADO/zinco" ;;
		94)	fake="# ./FILES/JOGO/MERCADO/ouro"  ;;
		96)	fake="# 50 >> ./FILES/JOGO/MERCADO/ouro" ;;
		98)	fake="# ./FILES/JOGO/MERCADO/madeira"    ;;
		100) fake="# 10 >> ./FILES/JOGO/MERCADO/madeira"  ;;
			
		*) echo "" ;;
	esac

	sleep 0.2s
	clear
done
echo -e ${white}${bold}"# FIM DA INSTALAÇÃO!" ${normal}${NC}
echo -e ${xyellow}"# |$lx|$vv %"${NC}
echo -e ${xgreen}${bold}"» JOGO INSTALADO COM SUCESSO!"${normal}${NC}
}

#########################################################################################
menulogin(){
echo -e ${white}${bold}" #                          SHELL GAME 0.1 ALPHA                       # "${normal}${NC}
echo ""
echo -e ${white}${bold} "#------------------------------- # MENU #-----------------------------#" ${normal}${NC}
echo -e ${white}${bold} "# ${yellow}[l -LOGIN] ${green}[n - NOVA CONTA] ${red}[a - ADMIN] ${blue}[x - SAIR]${white}                  #" ${normal}${NC}
echo -e ${white}${bold} "#---------------------------------------------------------------------#" ${normal}${NC}
}

menuadmin(){
echo -e ${red}${bold}" #                          SHELL GAME 0.1 ALPHA                       # "${normal}${NC}
echo ""
echo -e ${xred}${bold} "#------------------------------- # MENU #-----------------------------#" ${normal}${NC}
echo -e ${xred}${bold} "# 1 - VER UTILIZADORES                                                #" ${normal}${NC}
echo -e ${xred}${bold} "# 2 - CRIAR UTILIZADORES                                              #" ${normal}${NC}
echo -e ${xred}${bold} "# 3 - EDITAR UTILIZADORES                                             #" ${normal}${NC}
echo -e ${xred}${bold} "# 4 - ELIMINAR UTILIZADORES                                           #" ${normal}${NC}
echo -e ${xred}${bold} "# 5 - FAZER BACKUPS                                                   #" ${normal}${NC}
echo -e ${xred}${bold} "# 6 - DESINSTALAR JOGO                                                #" ${normal}${NC}
echo -e ${xred}${bold} "# 7 - SAIR                                                            #" ${normal}${NC}
echo -e ${xred}${bold} "#---------------------------------------------------------------------#" ${normal}${NC}
}

menu(){
echo -e ${white}${bold}" #                          SHELL GAME 0.1 ALPHA                       # "${normal}${NC}
echo -e ${white}${bold} "» WELCOME USER: "${bold}${NC} $user
echo -e ${white}${bold} "» CRÉDITOS "${bold}${NC} `sed '5!d' ./FILES/USERS/$user/dados`
echo ""
echo -e ${white}${bold} "#------------------------------- # MENU #-----------------------------#" ${normal}${NC}
echo -e ${white}${bold} "# ${yellow}[s -STATUS] ${green}[i - INVENTARIO] ${purple}[m - MERCADO] ${blue2}[n - MISSÕES] ${gres}[x - SAIR]${white} #" ${normal}${NC}
echo -e ${white}${bold} "#---------------------------------------------------------------------#" ${normal}${NC}
}

#####################################################################################################
#####################################################################################################
#####################################################################################################


login(){
clear
menulogin
until [ "$escolha" = "x" ]
do
read escolha
case $escolha in
	######################################################### LOGIN
	"l") clear
		menulogin
		echo -e ${xyellow}${bold}"» USERNAME:"${normal}${NC}
		read user
		echo -e ${xyellow}${bold}"» PASSWORD:"${normal}${NC}
		read -s password
		echo "$pass"
			if [ -d "./FILES/USERS/$user" ]; then 
				pass=`sed '2!d' "./FILES/USERS/$user/dados"`
				if [ "$pass" = "$password" ]; then
					echo -e ${xgreen}${bold}"» LOGIN COM SUCESSO!"${normal}${NC}
					clear
					game
					escolha="x"
												
				else
					echo -e ${xred}${bold}$"» PASSWORD INCORRETA!"${NC}
				fi			
			else
				echo -e ${xred}$"» UTILIZADOR NÃO EXISTE!"${NC}

			fi
		;;
	######################################################### CRIAR CONTA
	"n") clear
		menulogin 
		echo ""
		echo -e ${green}${bold}$"# NOVA CONTA #"${NC}
		echo -e ${xgreen}${bold}$"» NOME UTILIZADOR:"${NC}		
		read user
			if [ -d "./FILES/USERS/$user" ]; then
				echo -e ${xred}${bold}$"» UTILIZADOR JÁ EXISTE!"${NC}		
			else
				echo -e ${xgreen}${bold}$"» PASSWORD:"${NC}		
				read -s password
				echo -e ${xgreen}${bold}$"» CONFIRME PASSWORD:"${NC}
				read -s password2
					if [ "$password" = "$password2" ]; then
						mkdir "./FILES/USERS/$user"
						mkdir "./FILES/USERS/$user/INVENTARIO"
						touch "./FILES/USERS/$user/dados"
						echo "$user" >> "./FILES/USERS/$user/dados"
						echo "$password2" >> "./FILES/USERS/$user/dados"
						echo "1" >> "./FILES/USERS/$user/dados"
						echo "0" >> "./FILES/USERS/$user/dados"
						echo "100" >> "./FILES/USERS/$user/dados"
						echo -e ${green}${bold}"» CONTA CRIADA COM SUCESSO!"${normal}${NC}			
					else
						echo -e ${xred}${bold}$"» A PASSWORD NÃO COINCIDE!"${NC}
					fi
			fi
		;;
	######################################################### ADMIN SETTINGS
	"a") clear 
		menulogin
		echo -e ${red}${bold}"# MODO ADMIN #" ${normal}${NC}
		admin=""
		passadmin=""
		echo -e ${xred}${bold}"» USERNAME:" ${normal}${NC}
		read admin
		echo -e ${xred}${bold}"» PASSWORD:" ${normal}${NC}
		read -s passadmin
		clear
		if [[ ( "$admin" = "admin") && ( "$passadmin" = "admin") ]]; then
			aescolha=""
			menuadmin
			until [ "$aescolha" = "7" ]
			do
				read aescolha
				case $aescolha in
				"1") clear
					menuadmin
					echo -e ${xred}${bold}"» UTILIZADORES:" ${normal}${NC}
					ls ./FILES/USERS/
				;;
				"2") clear
					menuadmin
					echo -e ${red}${bold}$"# NOVA CONTA #"${NC}
					echo -e ${xred}${bold}$"» NOME UTILIZADOR:"${NC}		
					read user
					if [ -d "./FILES/USERS/$user" ]; then
						echo -e ${xred}${bold}$"» UTILIZADOR JÁ EXISTE!"${NC}		
					else
						echo -e ${xred}${bold}$"» PASSWORD:"${NC}		
						read -s password
						echo -e ${xred}${bold}$"» CONFIRME PASSWORD:"${NC}
						read -s password2
						if [ "$password" = "$password2" ]; then
							mkdir "./FILES/USERS/$user"
							mkdir "./FILES/USERS/$user/INVENTARIO"
							touch "./FILES/USERS/$user/dados"
							echo "$user" >> "./FILES/USERS/$user/dados"
							echo "$password2" >> "./FILES/USERS/$user/dados"
							echo "1" >> "./FILES/USERS/$user/dados"
							echo "0" >> "./FILES/USERS/$user/dados"
							echo "100" >> "./FILES/USERS/$user/dados"
							echo -e ${green}${bold}"» CONTA CRIADA COM SUCESSO!"${normal}${NC}			
						else
							echo -e ${xred}${bold}$"» A PASSWORD NÃO COINCIDE!"${NC}
						fi
					fi
				;;
				"3") clear
					menuadmin
					utilizador=""
					novoutilizador=""
					novapass=""
					echo -e ${xred}${bold}"» NOME DO UTILIZADOR:" ${normal}${NC}
					read utilizador
					if [ -d "./FILES/USERS/$utilizador" ]; then
						echo -e ${xred}${bold}"» NOVO USERNAME:" ${normal}${NC}
						read novoutilizador
						echo -e ${xred}${bold}"» NOVA PASSWORD:" ${normal}${NC}
						read novapass

						x3=`sed '3!d' "./FILES/USERS/$utilizador/dados"`
						x4=`sed '4!d' "./FILES/USERS/$utilizador/dados"`
						x5=`sed '5!d' "./FILES/USERS/$utilizador/dados"`

						mv -i "./FILES/USERS/$utilizador" "./FILES/USERS/$novoutilizador"
						rm "./FILES/USERS/$novoutilizador/dados"
						touch "./FILES/USERS/$novoutilizador/dados"
						echo "$novoutilizador" >> "./FILES/USERS/$novoutilizador/dados"
						echo "$novapass" >> "./FILES/USERS/$novoutilizador/dados"
						echo "$x3" >> "./FILES/USERS/$novoutilizador/dados"
						echo "$x4" >> "./FILES/USERS/$novoutilizador/dados"
						echo "$x5" >> "./FILES/USERS/$novoutilizador/dados"

						echo -e ${green}${bold}"» ALTERAÇÕES FEITAS COM SUCESSO!"${normal}${NC}	
					else
						echo -e ${xwhite}$"» UTILIZADOR NÃO EXISTE!"${NC}
					fi
				;;
				"4") clear
					menuadmin
					utilizador=""
					echo -e ${red}$"» EXISTEM OS SEGUINTES UTILIZADORES:"${NC}
					ls ./FILES/USERS/
					echo -e ${xred}$"» DIGITE O NOME DE UTILIZADOR QUE DESEJA ELIMINAR:"${NC}
					read utilizador
					if [ -d "./FILES/USERS/$utilizador" ]; then
						echo -e ${xwhite}$"» DESEJA CONTINUAR? [S/N]"${NC}
						opx=""
						read opx
						if [ "$opx" = "s" ]; then
							echo -e ${xgreen}$"» UTILIZADOR ELIMINADO COM SUCESSO!"${NC}
							rm -rf "./FILES/USERS/$utilizador"
						elif [ "$opx" = "n" ]; then
							echo -e ${xwhite}$"» ELIMINAÇÃO CANCELADA!"${NC}	
						else
							echo -e ${xwhite}$"» COMANDO INVÁLIDO!"${NC}
						fi
					else
						echo -e ${xwhite}$"» UTILIZADOR NÃO EXISTE!"${NC}
					fi
				;;
				"5") clear
					menuadmin
					echo -e ${red}$"» SELECIONE QUE TIPO DE BACKUPS DESEJA:"${NC}
					echo -e ${xred}$"» 1 - UTILIZADORES"${NC}
					echo -e ${xred}$"» 2 - TODOS OS FICHEIROS"${NC}
					echo -e ${xred}$"» 3 - VER BACKUPS"${NC}
					echo -e ${xred}$"» 4 - SAIR"${NC}
					opx=""
					read opx
					if [ "$opx" = "1" ]; then
						DIR_ORIG="./FILES/USERS/"
						DIR_DEST="./FILES/BACKUPS/"
						BKP_NAME="shellgame_users_backup.tgz"
						tar -czpf $DIR_DEST/$BKP_NAME $DIR_ORIG
						echo -e ${red}${bold}"BACKUP REALIZADO COM SUCESSO!"${normal}${NC}
						echo -e ${xred}${bold}"» Diretório: ${DIR_ORIG}"${normal}${NC}
						echo -e ${xred}${bold}"» Destino: ${DIR_DEST}${BKP_NAME}"${normal}${NC}

					elif [ "$opx" = "2" ]; then
						DIR_ORIG="./FILES/"
						DIR_DEST="./FILES/BACKUPS/"
						BKP_NAME="shellgame_backup.tgz"
						tar -czpf $DIR_DEST/$BKP_NAME $DIR_ORIG
						echo -e ${red}${bold}"BACKUP REALIZADO COM SUCESSO!"${normal}${NC}
						echo -e ${xred}${bold}"» Diretório: ${DIR_ORIG}"${normal}${NC}
						echo -e ${xred}${bold}"» Destino: ${DIR_DEST}${BKP_NAME}"${normal}${NC}
					elif [ "$opx" = "3" ]; then
						echo -e ${xred}${bold}"» EXISTEM OS SEGUINTES BACKUPS:"${normal}${NC}
						ls  -al ./FILES/BACKUPS
					elif [ "$opx" = "4" ]; then
						clear
						menuadmin

					else
						echo -e ${xred}${bold}"» BACKUP CANCELADO!"${normal}${NC}
					fi
				;;
				"6") clear
					menuadmin
					echo -e ${xred}${bold}"» TEM A CERTEZA QUE DESEJA ELIMINAR TODOS OS FICHEIROS? [S/N]"${normal}${NC}
					opx=""
					read opx
					clear
					if [ "$opx" = "s" ]; then
						echo -e ${red}${bold}$"» TODOS OS FICHEIROS FORAM ELIMINADO COM SUCESSO!"${normal}${NC}
						echo -e ${xwhite}${bold}$"» O JOGO SERÁ FECHADO DENTRO 3s!"${NC}
						sleep 1s
						clear
						echo -e ${red}${bold}$"» TODOS OS FICHEIROS FORAM ELIMINADO COM SUCESSO!"${normal}${NC}
						echo -e ${xwhite}${bold}$"» O JOGO SERÁ FECHADO DENTRO 2s!"${NC}
						sleep 1s
						clear
						echo -e ${red}${bold}$"» TODOS OS FICHEIROS FORAM ELIMINADO COM SUCESSO!"${normal}${NC}
						echo -e ${xwhite}${bold}$"» O JOGO SERÁ FECHADO DENTRO 1s!"${NC}
						sleep 1s
						clear
						rm -rf ./FILES
						sleep 2s
						exit 0
					elif [ "$opx" = "n" ]; then
						echo -e ${xred}${bold}"» DESINSTALAÇÃO CANCELADA!"${normal}${NC}
					else
						echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
					fi
				;;
				"7") clear
					menulogin
				;;
				*) echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
				;;
				esac
			done

		else
			echo -e ${xred}${bold} "» DADOS INTRODUZIDOS INCORRETOS!" ${normal}${NC}
			clear
			menulogin
		fi
		;;
	"x") echo -e ${white}${bold} "# SAISTE DO JOGO! #" ${normal}${NC}
		;;
	 
	 *) echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
		;;
esac
done
escolha=""
}
#####################################################################################################
#####################################################################################################
#####################################################################################################
game(){
clear
menu

	until [ "$escolha" = "x" ]
	do
	read escolha
	case $escolha in
		#################################################################
		"s") ############################################## STATUS
		clear
        menu
		nivel=`sed '3!d' ./FILES/USERS/$user/dados`
		xp=`sed '4!d' ./FILES/USERS/$user/dados`
		creditos=`sed '5!d' ./FILES/USERS/$user/dados`
		echo ""
		echo -e ${yellow}${bold} "#     STATUS ATUAL     #" ${normal}${NC}
		echo -e ${white}${bold} "# NÍVEL:"${yellow}$nivel ${normal}${NC}
		echo -e ${white}${bold} "# XP:"${yellow}$xp ${normal}${NC}
		echo -e ${white}${bold} "# CRÉDITOS:"${yellow}$creditos${normal}${NC}
		echo -e ${yellow}${bold} "#                      #" ${normal}${NC}
		;;
		#################################################################
		"i") ############################################## IVENTARIO
		clear
        menu
        xiventario=""
        echo ""
		echo -e ${green}${bold} "& INVENTARIO &"${NC} 
		echo -e ${green}${bold} "& [v - VENDER] [x -SAIR] &"${normal}${NC}
		echo -e ${xgreen}$"» NO INVENTÁRIO TEM:"${NC}
		ls  ./FILES/USERS/$user/INVENTARIO/
		echo $inv
		until [ "$xiventario" = "x" ]
		do
		read xiventario
		if [ "$xiventario" = "v" ]; then
			echo -e ${xgreen}"» ESCREVA O NOME DO ARTIGO QUE DESEJA VENDER:"${NC} 
			read artigo
			if [ -f "./FILES/USERS/$user/INVENTARIO/$artigo" ]; then
				xva=`sed '1!d' "./FILES/USERS/$user/INVENTARIO/$artigo"`
				echo -e ${green}${bold}"» AO VENDER O ARTIGO RECEBE:"${NC} 
				perc=$(($xva / 2)) 
				echo "$perc créditos"
				echo -e ${xgreen}$"» DESEJA CONTINUAR? [S/N]"${NC}  
					choise=""
					read choise
					if [ "$choise" = "s" ]; then
						creditos=`sed '5!d' ./FILES/USERS/$user/dados`
						sub=$(($creditos + $perc))
						sed -i "5i $sub" ./FILES/USERS/$user/dados
						rm ./FILES/USERS/$user/INVENTARIO/$artigo
						echo -e ${xgreen}$"» ARTIGO VENDIDO COM SUCESSO!"${NC} 	
					elif [ "$choise" = "n" ]; then
						echo -e ${xred}$"» VENDA CANCELADA!"${NC} 
					else
						echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
					fi
			else
				echo -e ${xred}"» ARTIGO NÃO EXISTE OU JÁ FOI VENDIDO!"${NC}
			fi
		elif [ "$xiventario" = "x" ]; then
			echo -e ${green}${bold} "& SAISTE DO IVENTARIO! &"${NC}
	
		else
			echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
		fi		
		done		
		;;
		#################################################################
		"m") ############################################## MERCADO
		clear
        menu
        xmercado=""
        echo "" 
		echo -e ${purple}${bold} "$ MERCADO $"${NC} 
		echo -e ${purple}${bold} "$ [c - COMPRAR] [x -SAIR] $"${normal}${NC} 
		echo -e ${xpurple}$"» NA LOJA TEM OS SEGUINTES ARTIGOS:"${NC}
		shop=`ls  ./FILES/JOGO/MERCADO/` 
		echo $shop	
		until [ "$xmercado" = "x" ]
		do
		read xmercado
		if [ "$xmercado" = "c" ]; then
			echo -e ${xpurple}$"» ESCREVA O NOME DO ARTIGO QUE DESEJA COMPRAR:"${NC} 
			read artigo
			if [ -f "./FILES/JOGO/MERCADO/$artigo" ]; then
				if [ -f "./FILES/USERS/$user/INVENTARIO/$artigo" ]; then
					echo -e ${xred}$"» JÁ POSSUI ESTE ARTIGO NO SEU INVENTÁRIO!"${NC}  
				else
					xprexo=`sed '1!d' "./FILES/JOGO/MERCADO/$artigo"`
					echo -e ${purple}${bold}"» O ARTIGO QUE ESCOLHEU TEM O SEGUINTE CUSTO:"${NC}
					echo "$xprexo créditos"
					echo -e ${xpurple}${bold}"» DESEJA CONTINUAR A COMPRA? [S/N]"${NC}
					xesc=""
					read xesc
					if [ "$xesc" = "s" ]; then
						creditos=`sed '5!d' ./FILES/USERS/$user/dados`
						if [ "$creditos" -ge "$xprexo" ]; then
							soma=$(($creditos - $xprexo)) 
							sed -i "5i $soma" ./FILES/USERS/$user/dados
							echo -e ${xgreen}$"» ARTIGO COMPRADO COM SUCESSO!"${NC} 
							cp  ./FILES/JOGO/MERCADO/$artigo ./FILES/USERS/$user/INVENTARIO/
					 	else
					 		echo -e ${xred}$"» CRÉDITOS INSUFICIENTES!"${NC} 	
						fi
					elif [ "$xesc" = "n" ]; then
						echo -e ${xred}$"» COMPRA CANCELADA!"${NC} 
					else 
						echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
					fi
				fi
			else
				echo -e ${xred}"» ARTIGO NÃO EXISTE OU JÁ FOI COMPRADO!"${NC}

			fi

		elif [ "$xmercado" = "x" ]; then
			echo -e ${purple}${bold} "$ SAISTE DO MERCADO! $"${NC}
		else
			echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
		fi		
		done
		;;
		#################################################################
		"n") ############################################## MISSOES;;
		clear
        menu
        xmissoes=""
        echo ""
		echo -e ${blue2}${bold} "§ MISSÕES §"${NC} 
		echo -e ${blue2}${bold} "§ [i - INICIAR] [x -SAIR] §"${normal}${NC} 
		echo -e ${xblue2}$"» MISSÕES DISPONÍVEIS:"${NC}
		ls  ./FILES/JOGO/MISSOES/
	until [ "$xmissoes" = "x" ]
	do
		read xmissoes
		if [ "$xmissoes" = "i" ]; then
			echo -e ${xblue2}$"» ESCREVA O NOME DA MISSÃO QUE DESEJA INICIAR:"${NC} 
			missao=""
			read missao
			if [ -f "./FILES/JOGO/MISSOES/$missao" ]; then
					mn=`sed '1!d' "./FILES/JOGO/MISSOES/$missao"`
					mc=`sed '2!d' "./FILES/JOGO/MISSOES/$missao"`
					mr1=`sed '3!d' "./FILES/JOGO/MISSOES/$missao"`
					mr2=`sed '4!d' "./FILES/JOGO/MISSOES/$missao"`
					mxp=`sed '5!d' "./FILES/JOGO/MISSOES/$missao"`
					mcr=`sed '6!d' "./FILES/JOGO/MISSOES/$missao"`
					mm=`sed '7!d' "./FILES/JOGO/MISSOES/$missao"`
					mr=`sed '8!d' "./FILES/JOGO/MISSOES/$missao"`
					echo -e ${xblue2}${bold}"» A MISSÃO REQUER:"${NC}
					echo -e ${blue2}${bold}"CUSTO:"${NC}" $mc créditos" ${NC}
					echo -e ${blue2}${bold}"REQUESITOS:"${NC}" $mr1 | $mr2" ${NC}
					echo -e ${xblue2}${bold}"» DESEJA CONTINUAR? [S/N]"${NC}
					creditos=`sed '5!d' ./FILES/USERS/$user/dados`
					xsn=""
					read xsn
					if [ "$xsn" = "s" ]; then
						if [[ ( -f "./FILES/USERS/$user/INVENTARIO/$mr1" ) && ( -f "./FILES/USERS/$user/INVENTARIO/$mr2" ) && ( "$creditos" -ge "$mc" ) ]]; then
						echo -e ${blue2}${bold}"» MISSÃO INICIADA!:"${NC}
						soma=$(($creditos - $mc))
						sed -i "5i $soma" ./FILES/USERS/$user/dados
						rm ./FILES/USERS/$user/INVENTARIO/$mr1
						rm ./FILES/USERS/$user/INVENTARIO/$mr2
						echo -e ${xblue2}${bold}"CÁLCULE: $mm ?:"${NC}
						xop=""
						read xop
							if [ "$xop" = "$mr" ]; then
								echo -e ${xgreen}${bold}"» PARABÉNS PASSASTE A MISSÃO!"${NC}
								echo -e ${blue2}${bold}"» COMO RECOMPENSA GANHAS:"${NC}${xyellow}" $mxp xp + $mcr créditos"${NC}
								xp=`sed '4!d' ./FILES/USERS/$user/dados`
								creditos=`sed '5!d' ./FILES/USERS/$user/dados`
								soma=$(($xp + $mxp))
								soma2=$(($creditos + $mcr))
								sed -i "4i $soma" ./FILES/USERS/$user/dados
								sed -i "5i $soma2" ./FILES/USERS/$user/dados	
							else
								echo -e ${xred}$"» REPOSTA ERRADA, PERDESTE A MISSÃO!"${NC} 
							fi
						else
							echo -e ${xred}$"» NÃO TEM CRÉDITOS SUFICIENTE OU NÃO POSSUI OS REQUESITOS DA MISSÃO!"${NC} 						 
						fi
					elif [ "$xsn" = "n" ]; then
						echo -e ${xred}$"» MISSÃO CANCELADA!"${NC} 
					else 
						echo -e ${xred}$"» COMANDO INVÁLIDO"${NC} 
					fi
			else
			echo -e ${xred}$"» MISSÃO NÃO EXISTE!"${NC} 
			fi
		elif [ "$xmissoes" = "x" ]; then
			echo -e ${blue2}${bold} "§ SAISTE DAS MISSÕES! §"${NC}
		else
			echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC} 
		fi		
	done
		;;
		#################################################################
		############################################## SAIR;;
		"x") echo -e ${white}${bold} "# SAISTE DO JOGO! #" ${normal}${NC} 
		;;
		*) echo -e ${xred}$"» COMANDO INVÁLIDO!"${NC}  ;;
	esac
	done
}

files(){
	mkdir "./FILES/"
	 mkdir "./FILES/USERS/"
	 mkdir "./FILES/JOGO/"
	 mkdir "./FILES/BACKUPS/"
	 mkdir "./FILES/JOGO/MISSOES/"
	 ##################
	 touch "./FILES/JOGO/MISSOES/soma" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/soma" #NÍVEL
	 echo "20" >> "./FILES/JOGO/MISSOES/soma" #CUSTO CŔEDITOS
	 echo "plastico" >> "./FILES/JOGO/MISSOES/soma" #REQUESITO 1
	 echo "madeira" >> "./FILES/JOGO/MISSOES/soma" #REQUESITO 2
	 echo "100" >> "./FILES/JOGO/MISSOES/soma" # XP
	 echo "100" >> "./FILES/JOGO/MISSOES/soma" # RECOMPENSA CRÉDITOS
	 echo "13254 + 21" >> "./FILES/JOGO/MISSOES/soma" # PROBLEMA
	 echo "13275" >> "./FILES/JOGO/MISSOES/soma" # RESULTADO
	 	 ##################
	 touch "./FILES/JOGO/MISSOES/divisao" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/divisao" #NÍVEL
	 echo "35" >> "./FILES/JOGO/MISSOES/divisao" #CUSTO CŔEDITOS
	 echo "argila" >> "./FILES/JOGO/MISSOES/divisao" #REQUESITO 1
	 echo "zinco" >> "./FILES/JOGO/MISSOES/divisao" #REQUESITO 2
	 echo "150" >> "./FILES/JOGO/MISSOES/divisao" # XP
	 echo "180" >> "./FILES/JOGO/MISSOES/divisao" # RECOMPENSA CRÉDITOS
	 echo "(0-650) / 10" >> "./FILES/JOGO/MISSOES/divisao" # PROBLEMA
	 echo "65" >> "./FILES/JOGO/MISSOES/divisao" # RESULTADO
	 	 ##################
	 touch "./FILES/JOGO/MISSOES/subtração" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/subtração" #NÍVEL
	 echo "50" >> "./FILES/JOGO/MISSOES/subtração" #CUSTO CŔEDITOS
	 echo "carvao" >> "./FILES/JOGO/MISSOES/subtração" #REQUESITO 1
	 echo "aço" >> "./FILES/JOGO/MISSOES/subtração" #REQUESITO 2
	 echo "175" >> "./FILES/JOGO/MISSOES/subtração" # XP
	 echo "270" >> "./FILES/JOGO/MISSOES/subtração" # RECOMPENSA CRÉDITOS
	 echo "89 - 20 - 9 * 10 / 6" >> "./FILES/JOGO/MISSOES/subtração" # PROBLEMA
	 echo "100" >> "./FILES/JOGO/MISSOES/subtração" # RESULTADO
	 	 ##################
	 touch "./FILES/JOGO/MISSOES/multiplicação" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/multiplicação" #NÍVEL
	 echo "70" >> "./FILES/JOGO/MISSOES/multiplicação" #CUSTO CŔEDITOS
	 echo "ferro" >> "./FILES/JOGO/MISSOES/multiplicação" #REQUESITO 1
	 echo "cobre" >> "./FILES/JOGO/MISSOES/multiplicação" #REQUESITO 2
	 echo "200" >> "./FILES/JOGO/MISSOES/multiplicação" # XP
	 echo "375" >> "./FILES/JOGO/MISSOES/multiplicação" # RECOMPENSA CRÉDITOS
	 echo "20 * 30 * 100 / 10" >> "./FILES/JOGO/MISSOES/multiplicação" # PROBLEMA
	 echo "6000" >> "./FILES/JOGO/MISSOES/multiplicação" # RESULTADO
	 	 ##################
	 touch "./FILES/JOGO/MISSOES/raiz" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/raiz" #NÍVEL
	 echo "100" >> "./FILES/JOGO/MISSOES/raiz" #CUSTO CŔEDITOS
	 echo "aço" >> "./FILES/JOGO/MISSOES/raiz" #REQUESITO 1
	 echo "ouro" >> "./FILES/JOGO/MISSOES/raiz" #REQUESITO 2
	 echo "400" >> "./FILES/JOGO/MISSOES/raiz" # XP
	 echo "700" >> "./FILES/JOGO/MISSOES/raiz" # RECOMPENSA CRÉDITOS
	 echo "raiz de 25 + 5" >> "./FILES/JOGO/MISSOES/raiz" # PROBLEMA
	 echo "10" >> "./FILES/JOGO/MISSOES/raiz" # RESULTADO
	 	##################
	 touch "./FILES/JOGO/MISSOES/pi" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/pi" #NÍVEL
	 echo "100" >> "./FILES/JOGO/MISSOES/pi" #CUSTO CŔEDITOS
	 echo "diamante" >> "./FILES/JOGO/MISSOES/pi" #REQUESITO 1
	 echo "ferro" >> "./FILES/JOGO/MISSOES/pi" #REQUESITO 2
	 echo "600" >> "./FILES/JOGO/MISSOES/pi" # XP
	 echo "1000" >> "./FILES/JOGO/MISSOES/pi" # RECOMPENSA CRÉDITOS
	 echo "(pi * 3) /2" >> "./FILES/JOGO/MISSOES/pi" # PROBLEMA
	 echo "4,71" >> "./FILES/JOGO/MISSOES/pi" # RESULTADO
	 	##################
	 touch "./FILES/JOGO/MISSOES/cosseno" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/cosseno" #NÍVEL
	 echo "200" >> "./FILES/JOGO/MISSOES/cosseno" #CUSTO CŔEDITOS
	 echo "ouro" >> "./FILES/JOGO/MISSOES/cosseno" #REQUESITO 1
	 echo "cobre" >> "./FILES/JOGO/MISSOES/cosseno" #REQUESITO 2
	 echo "500" >> "./FILES/JOGO/MISSOES/cosseno" # XP
	 echo "300" >> "./FILES/JOGO/MISSOES/cosseno" # RECOMPENSA CRÉDITOS
	 echo "cosseno 70º" >> "./FILES/JOGO/MISSOES/cosseno" # PROBLEMA
	 echo "0,34" >> "./FILES/JOGO/MISSOES/cosseno" # RESULTADO
	 	##################
	 touch "./FILES/JOGO/MISSOES/seno" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/seno" #NÍVEL
	 echo "200" >> "./FILES/JOGO/MISSOES/seno" #CUSTO CŔEDITOS
	 echo "aço" >> "./FILES/JOGO/MISSOES/seno" #REQUESITO 1
	 echo "madeira" >> "./FILES/JOGO/MISSOES/seno" #REQUESITO 2
	 echo "200" >> "./FILES/JOGO/MISSOES/seno" # XP
	 echo "250" >> "./FILES/JOGO/MISSOES/seno" # RECOMPENSA CRÉDITOS
	 echo "seno 180ª" >> "./FILES/JOGO/MISSOES/seno" # PROBLEMA
	 echo "0" >> "./FILES/JOGO/MISSOES/seno" # RESULTADO
	 	##################
	 touch "./FILES/JOGO/MISSOES/tangente" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/tangente" #NÍVEL
	 echo "200" >> "./FILES/JOGO/MISSOES/tangente" #CUSTO CŔEDITOS
	 echo "plastico" >> "./FILES/JOGO/MISSOES/tangente" #REQUESITO 1
	 echo "zinco" >> "./FILES/JOGO/MISSOES/tangente" #REQUESITO 2
	 echo "500" >> "./FILES/JOGO/MISSOES/tangente" # XP
	 echo "300" >> "./FILES/JOGO/MISSOES/tangente" # RECOMPENSA CRÉDITOS
	 echo "tangente 25ª" >> "./FILES/JOGO/MISSOES/tangente" # PROBLEMA
	 echo "0,46" >> "./FILES/JOGO/MISSOES/tangente" # RESULTADO
	 	##################
	 touch "./FILES/JOGO/MISSOES/elevado" #MISSÃO
	 echo "1" >> "./FILES/JOGO/MISSOES/elevado" #NÍVEL
	 echo "250" >> "./FILES/JOGO/MISSOES/elevado" #CUSTO CŔEDITOS
	 echo "plastico" >> "./FILES/JOGO/MISSOES/elevado" #REQUESITO 1
	 echo "ouro" >> "./FILES/JOGO/MISSOES/elevado" #REQUESITO 2
	 echo "800" >> "./FILES/JOGO/MISSOES/elevado" # XP
	 echo "500" >> "./FILES/JOGO/MISSOES/elevado" # RECOMPENSA CRÉDITOS
	 echo "2 elevado a 7" >> "./FILES/JOGO/MISSOES/elevado" # PROBLEMA
	 echo "128" >> "./FILES/JOGO/MISSOES/elevado" # RESULTADO


	 ##################
	
	 ##################################################### ARTIGOS DO MERCADO
	 mkdir "./FILES/JOGO/MERCADO/"
	 touch "./FILES/JOGO/MERCADO/argila" 
	 	echo "25" >> "./FILES/JOGO/MERCADO/argila" # CUSTO
	 touch "./FILES/JOGO/MERCADO/plastico" 
	 	echo "10" >> "./FILES/JOGO/MERCADO/plastico" # CUSTO
	 touch "./FILES/JOGO/MERCADO/diamante" 
	 	echo "500" >> "./FILES/JOGO/MERCADO/diamante" # CUSTO
	 touch "./FILES/JOGO/MERCADO/aço" 
	 	echo "100" >> "./FILES/JOGO/MERCADO/aço" # CUSTO
	 touch "./FILES/JOGO/MERCADO/ferro" 
	 	echo "60" >> "./FILES/JOGO/MERCADO/ferro" # CUSTO
	 touch "./FILES/JOGO/MERCADO/vidro" 
	 	echo "75" >> "./FILES/JOGO/MERCADO/vidro" # CUSTO
	 touch "./FILES/JOGO/MERCADO/cobre" 
	 	echo "80" >> "./FILES/JOGO/MERCADO/cobre" # CUSTO
	 touch "./FILES/JOGO/MERCADO/carvao" 
	 	echo "15" >> "./FILES/JOGO/MERCADO/carvao" # CUSTO
	 touch "./FILES/JOGO/MERCADO/zinco" 
	 	echo "30" >> "./FILES/JOGO/MERCADO/zinco" # CUSTO
	 touch "./FILES/JOGO/MERCADO/ouro"  
	 	echo "150" >> "./FILES/JOGO/MERCADO/ouro" # CUSTO
	 touch "./FILES/JOGO/MERCADO/madeira" 
		 echo "20" >> "./FILES/JOGO/MERCADO/madeira" # CUSTO
	 loading
	 echo ""
	 echo -e ${white}${bold}"» INICIAR JOGO? [S/N]!"${normal}${NC}
	 escolha3=""
	 read escolha3
	 if [ "$escolha3" = "s" ]; then
	 	xfiles="x"
	 	login
	 elif [ "$escolha3" = "n" ]; then
	 	xfiles="x"
	 fi
}
#####################################################################################################
#####################################################################################################
#####################################################################################################
#####################################################################################################
#PROGRAMA PRINCIPAL:

if [ -d "./FILES/" ]; then 
login

else
	img
	echo -e ${red}${bold}"JOGO NÃO ESTÁ INSTALDO OU NÃO FORAM ENCONTRADOS OS FICHEIROS DO JOGO!"${normal}${NC}
	echo -e ${xred}${bold}"DESEJA INSTALAR O JOGO? [S / N]"${normal}${NC}	
	until [ "$xfiles" = "x" ]
	do
		read xfiles
		case $xfiles in
			"s") files ;;
			"n") echo -e ${red}${bold}"» A INSTALAÇÃO DO JOGO FOI CANCELADA!"${normal}${NC}
				 xfiles="x" ;;
			"x") echo -e ${white}${bold}"# INSTALADOR FECHADO! #"${normal}${NC} ;;
			  *) echo -e ${xred}${bold}"» COMANDO INVÁLIDO!"${normal}${NC} ;;
		esac
	done
fi