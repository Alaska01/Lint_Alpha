# rubocop:disable Lint/Syntax
# The CSS codes below have proper opening curly braces.
# Proper Indentation of 2 spaces per attributes.
# No empty block on a single line
# Detects wrong number of semicolumns and columns on any given line.
# The above are the cases covered in the test

.test1 {
  color: red; 
  margin: 0; 
  height: 9px; 
  width: 50px;
}

.test2 {
  padding: 50px;
  margin: 50px;
}

.test3 {
  height: 50px;
}

.test4 {
  color: red;
}

# rubocop:enable Lint/Syntax