#! /bin/bash

./runGenProgForBug.sh $1 $2 allHuman 100 D4JwithGP $4 $(( $4 + 1 )) false $JAVA7_HOME $JAVA9_HOME false a false a $3 2>> errors/$1$2
./extractTars.sh ${1,,}$2"Buggy"

