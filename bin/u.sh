#!/bin/sh
# Inicia produccion
if (test "${SECRET_KEY_BASE}" = "") then {
	echo "Definir variable de ambiente SECRET_KEY_BASE"
	exit 1;
} fi;
if (test "${USUARIO_AP}" = "") then {
	echo "Definir usuario con el que se ejecuta en USUARIO_AP"
	exit 1;
} fi;
DOAS=`which doas`
if (test "$DOAS" = "") then {
	DOAS=sudo
} fi;
$DOAS su ${USUARIO_AP} -c "cd /var/www/htdocs/cor1440; rake assets:precompile; echo \"Iniciando unicorn...\"; SECRET_KEY_BASE=${SECRET_KEY_BASE} bundle exec unicorn_rails -c ../cor1440/config/unicorn.conf.minimal.rb  -E production -D"


  

