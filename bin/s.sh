#!/bin/sh
# Integracion continua

if (test "$S2NOG" != "1") then {
	echo "## sip"
	cd ../sip/
	sudo bundle update
	sudo bundle install
	bin/gc.sh
	if (test "$?" != "0") then {
		exit 1;
	} fi;
} fi;
if (test "$S2NO2" != "1") then {
	echo "## cor1440"
	cd ../cor1440/
	sudo bundle update
	sudo bundle install
	bin/gc.sh
	if (test "$?" != "0") then {
		exit 1;
	} fi;
} fi;

