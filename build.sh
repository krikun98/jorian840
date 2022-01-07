#!/bin/sh

container_cmd="docker run -v=$(pwd):/kikit -w=/kikit --rm"

# Images
mkdir -p images
for name in "pcb" "plate" "bottom"
do
	for option in "$name"/*/
	do
		short_option="$(basename "$option")"
		file="$(find $option -type f -name '*.kicad_pcb')"
		${container_cmd} yaqwsx/kikit:nightly pcbdraw --style builtin:set-blue-enig.json "$file" images/"$name"_"$short_option".png >> /dev/null
		${container_cmd} yaqwsx/kikit:nightly pcbdraw --style builtin:set-blue-enig.json --back "$file" images/"$name"_"$short_option"_back.png >> /dev/null
	done
done

# Gerbers
mkdir -p gerbers
for name in "pcb"
do
	for option in "$name"/*/
	do
		short_option="$(basename "$option")"
		file="$(find $option -type f -name '*.kicad_pcb')"
		${container_cmd} yaqwsx/kikit:nightly kikit fab jlcpcb --no-assembly "$file" gerbers/"$name"_"$short_option" --no-drc
		mv gerbers/"$name"_"$short_option"/gerbers.zip gerbers/"$name"_"$short_option"_gerbers.zip
		rm -r gerbers/"$name"_"$short_option"
	done
done

# Plate/bottom dxf files
mkdir -p dxf
for name in "plate" "bottom"
do
for option in "$name"/*/
	do
		short_option="$(basename "$option")"
		file="$(find $option -type f -name '*.kicad_pcb')"
		file_name=$(basename "$file" .kicad_pcb)
		${container_cmd} yaqwsx/kikit:nightly kikit export dxf "$file" dxf/"$name"_"$short_option"
		mv dxf/"$name"_"$short_option"/"$file_name"-EdgeCuts.dxf dxf/"$name"_"$short_option".dxf
		rm -r dxf/"$name"_"$short_option"
	done
done

zip -jr dxf/case_files dxf/
	