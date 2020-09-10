require 'colorize'

class StylingRules
  attr_reader :error, :file

  def initialize(file)
    @error = []
    @file = file
  end

  def indentation(file)
    file.each_with_index do |line, index|
      next unless line.include? ';'

      arr = line.scan(/./)
      if arr[0] != ' ' || arr[1] != ' ' || arr[2] == ' '
        @error << "LINE #{index + 1}: There is an indentation error, TWO spaces please"
      end
    end
    @error
  end

  def multiple_semicolomn(file)
    file.each_with_index do |line, index|
      next unless line.include? ';'

      arr = line.scan(/./)
      arr.size
      k = 0
      count = 0
      while k < arr.size
        count += 1 if arr[k] == ';'
        k += 1
      end
      @error << "LINE #{(index + 1)}: There are #{count} semicolomns, remove #{(count - 1)} please" if count > 1
    end
  end

  def multiple_colomn(file)
    file.each_with_index do |line, index|
      next unless line.include? ':'

      arr = line.scan(/./)
      arr.size
      k = 0
      count = 0
      while k < arr.size
        count += 1 if arr[k] == ':'
        k += 1
      end
      @error << "LINE #{(index + 1)}: There are #{count} colomns, remove #{(count - 1)} please" if count > 1
    end
  end

  def empty_block(file)
    file.each_with_index do |line, index|
      @error << "LINE #{index + 1}: Block is empty, block should not be empty please" if line.match(/{\n*}/)
    end
    @error
  end

  def opening_brace_space(file)
    file.each_with_index do |line, index|
      next unless line.include?('{')

      @error << "LINE #{index + 1}: Add a space before the opening brace please" if line.match(/([a-zA-Z]+|\]|\)){/)
    end
    @error
  end

  def indentation_1(file)
    file.each_with_index do |line, index|
      next unless line.include? ';'

      arr = line.scan(/./)

      if arr[0] != ' ' || arr[1] != ' '
        @error << "Indent 1 wrong indentation on line #{index + 1} kindly ensure you have two spaces before the command"
      end
    end
  end

  def error_message
    @error.each_with_index do |_val, err|
      @error[err]
    end
  end

  def clear_message
    'Kudos, You did a great job removing all the error' if @error == []
  end
end
