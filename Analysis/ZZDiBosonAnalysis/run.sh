#!/bin/bash
## small script to run the analysis
analysis="main_ZZDiBosonAnalysis"

##OPTION
echo Which option should I run? 
option = 1
parallel=1


## execute and run ROOT
echo "starting ROOT"
##
root -l -b << EOF
.L $analysis.C+
$analysis($parallel,$option)
EOF
##
echo "end of ROOT execution"
