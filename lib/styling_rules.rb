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

   def multiple_semicolomn(file)
    file.each_with_index do |line, index|
      if line.include? (";")
        arr = line.scan(/./)
        arr.size
        k = 0
        count = 0
        while k < arr.size
              if arr[k] == ";"
                  count += 1
              end
            k += 1
        end
        if count > 1
         @error << "LINE #{(index +1).to_s}: There are #{count.to_s} semicolomns, remove #{(count -1).to_s} please"
        end
      end
    end
  end



end