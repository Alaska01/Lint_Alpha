.test1{ #wrong close of openning curly brace
color: red; #Wrong indentation with no space, two space required
 margin: 0; #Wrong indentation, only one space given, Two space required
   height: 9px; #wrong indentation Three spaces given instead of Two space
  width: 50px;
}

.test2 {
  padding: 50px;;;;;;;;;;;;; #Multiple semicolumns instead of One
  margin:::: 50px; #multiple columns insted of One
}

.test3 {} #Detects empty block if on a single line

.test4 {
  color: red;;; #Multiple semi-columns insted of One
}
