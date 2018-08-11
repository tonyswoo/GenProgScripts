#! /bin/bash

INSTALLED=$HOME

export D4J_HOME=$INSTALLED/defects4j
export GP4J_HOME=$INSTALLED/genprog4java
export JAVA7_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JAVA9_HOME=/usr/lib/jvm/java-9-openjdk-amd64

seq 1 26 | xargs -n1 -P16 -I% bash -c "./runBug.sh Chart %"
seq 1 106 | xargs -n1 -P16 -I% bash -c "./runBug.sh Math %"
seq 1 133 | xargs -n1 -P16 -I% bash -c "./runBug.sh Closure %"
seq 1 65 | xargs -n1 -P16 -I% bash -c "./runBug.sh Lang %"
seq 1 38 | xargs -n1 -P16 -I% bash -c "./runBug.sh Mockito %"
seq 1 27 | xargs -n1 -P16 -I% bash -c "./runBug.sh Time %"
