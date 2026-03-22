#!/bin/bash

help_function(){
		echo "How To Use: $(basename "$0") [OPTIONS] [ARGUMENTS]"
		echo ""
		echo "Description: This application changes the orientation of an extra screen. It only works for right and left vertical monitors. Specific to the monitor im running. For now."
		echo "Options:"
		echo "	-h Shows help menu"
		echo ""
		echo "Arguments:"
		echo "	left-v"
		echo "	right-v"
		echo ""
		echo "Examples: orientScreen.sh left-v"
		echo ""
		exit 0
}

while getopts ":h" opt; do
		case ${opt} in
			h ) help_function
			;;
			\? ) # Handle invalid options
				echo "Invalid Option: -$OPTARG" >&2
				exit 1
			;;
		esac
done

shift $((OPTIND -1))

DIRECTION=$1

if [ -z "$DIRECTION" ]; then
	echo "No entry given"
	help_function
	exit 1;
fi


if [ $DIRECTION = 'left-v' ]
then
	displayplacer "id:68D2ABCD-34F7-1B1C-169D-3A0A23704D23 res:1440x900 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:55775E50-518D-CAFE-EADD-304CBD0BDF5F res:1440x2560 hz:144 color_depth:8 enabled:true scaling:off origin:(-1152,-1440) degree:90"
	exit 0
elif [ $1 == 'right-v' ]
then
	displayplacer "id:68D2ABCD-34F7-1B1C-169D-3A0A23704D23 res:1440x900 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:55775E50-518D-CAFE-EADD-304CBD0BDF5F res:1440x2560 hz:144 color_depth:8 enabled:true scaling:off origin:(1440,-1440) degree:90"
	exit 0
else
	echo "No side provided. Try again."
	
fi
	


exit 0
