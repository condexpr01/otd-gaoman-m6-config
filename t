#!/usr/bin/sh

prefix=${PREFIX:-/usr}
preset_dir="${prefix}/share/otd-gaoman-m6-config/Presets"

if [ -z "$1" ] && [ -d $preset_dir ]; then
	echo "option presets:"
	ls $preset_dir
elif [ -f "$preset_dir/$1" ] || [ -f "$preset_dir/$1.json" ]; then

	if [ -f "$preset_dir/$1" ];then
		otd loadsettings $preset_dir/$1
		echo "apply preset: $preset_dir/$1"
	elif [ -f "$preset_dir/$1.json" ];then
		otd loadsettings $preset_dir/$1.json
		echo "apply preset: $preset_dir/$1.json"
	fi
else
	echo "usage: t [preset]"
fi


