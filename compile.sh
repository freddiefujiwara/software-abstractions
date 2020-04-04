#!/bin/sh
export RET=0
for i in `find . -type f -iname *.als`; do 
    java -cp org.alloytools.alloy.dist.jar edu.mit.csail.sdg.alloy4whole.ExampleUsingTheCompiler $i > output 2>&1; 
    if grep -q error output ;
    then
        echo "error $i"
        RET=1
    else
        cat output
    fi
    rm output
done
exit $RET
