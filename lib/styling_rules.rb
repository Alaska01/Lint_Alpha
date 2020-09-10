require 'colorize'
file = File.open(ARGV[0])

class StylingRules
  attr_reader :error, :file
  def initialize
    @error = []
    @file = file
  end

  def indentation(file)
    file.each_with_index do |line, index|
       if line.include? (";")
         arr = line.scan(/./)
         if arr[0] != " " || arr[1] != " " || arr[2] == " "
           @error << "LINE #{index +1}: There is an indentation error, TWO spaces please"
         end
       end
     end
      @error
   end



end