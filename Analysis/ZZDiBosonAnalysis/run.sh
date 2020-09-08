#!/bin/bash
## small script to run the analysis
analysis="main_ZZDiBosonAnalysis"

##OPTION
option=1
parallel=0


## execute and run ROOT
echo "starting ROOT"
##
root -l -b << EOF
.L $analysis.C+
$analysis($parallel,$option)
EOF
##
echo "end of ROOT execution"
