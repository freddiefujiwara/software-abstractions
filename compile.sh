#!/bin/sh
if test ! -f org.alloytools.alloy.dist.jar; then
  wget https://github.com/AlloyTools/org.alloytools.alloy/releases/download/v5.1.0/org.alloytools.alloy.dist.jar
fi
export SOFTWARE_ABSTRACTION_COMPILE_RET=0
for i in `find . -type f -iname *.als`; do
  java -cp org.alloytools.alloy.dist.jar edu.mit.csail.sdg.alloy4whole.ExampleUsingTheCompiler $i > output 2>&1;
  if grep -q error output ;
  then
    echo "error $i"
    SOFTWARE_ABSTRACTION_COMPILE_RET=1
  else
    cat output
  fi
  rm output
done
exit $SOFTWARE_ABSTRACTION_COMPILE_RET
