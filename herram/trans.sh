f=`find . -name "*rb"`;
rm -rf /tmp/tr
for i in $f; do
	echo -n $i
	n=`echo $i | sed -f herram/trans.sed`;
	echo " -> $n"
	b=`dirname $n`;
	mkdir -p /tmp/tr/$b
	rm -f /tmp/tr/$n
	sed -f herram/trans.sed $i > /tmp/tr/$n
done;
