#!/bin/bash

if [ $1 == 'left-v' ]
    then
        displayplacer "id:68D2ABCD-34F7-1B1C-169D-3A0A23704D23 res:1440x900 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:55775E50-518D-CAFE-EADD-304CBD0BDF5F res:1440x2560 hz:144 color_depth:8 enabled:true scaling:off origin:(-1152,-1440) degree:90"
elif [ $1 == 'right-v' ]
    then
        displayplacer "id:68D2ABCD-34F7-1B1C-169D-3A0A23704D23 res:1440x900 color_depth:8 enabled:true scaling:on origin:(0,0) degree:0" "id:55775E50-518D-CAFE-EADD-304CBD0BDF5F res:1440x2560 hz:144 color_depth:8 enabled:true scaling:off origin:(1440,-1440) degree:90"
else
        echo "No side provided. Try again."
fi

exit 0