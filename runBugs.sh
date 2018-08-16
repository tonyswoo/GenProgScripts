#! /bin/bash

# $1 is true if using entropy
# $2 starting seed number
INSTALLED=$HOME

export D4J_HOME=$INSTALLED/defects4j
export GP4J_HOME=$INSTALLED/genprog4java
export JAVA7_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA9_HOME=/usr/lib/jvm/java-9-openjdk-amd64

./getBugs.sh | xargs -n1 -P16 -I% bash -c "./runBug.sh % $1 $2"
