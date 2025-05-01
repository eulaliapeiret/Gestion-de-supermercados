#! /bin/bash

jar_file="entrega1-driver.jar"
path_jocs="../FONTS/subgrup-prop43.3/src/test/java/layers/JocsDeProva"

for x in $@
do
	input="${path_jocs}/Joc${x}input.txt"
	output="Joc${x}output.out"
	real_output="${path_jocs}/Joc${x}output.txt"
	java -jar $jar_file < $input > $output
	echo "Diferencies entre $output i $real_output:"
	echo "------------------------------------------------------------------"
	echo "------------------------------------------------------------------"
	diff $output $real_output
	echo "------------------------------------------------------------------"
	echo "------------------------------------------------------------------"
	rm $output
done
