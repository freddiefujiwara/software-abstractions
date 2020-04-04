#!/bin/sh
for i in `find . -type f -iname *.als`; 
  do java -cp org.alloytools.alloy.dist.jar edu.mit.csail.sdg.alloy4whole.ExampleUsingTheCompiler $;
done
