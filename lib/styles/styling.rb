require 'colorize'

class StylingRules
  attr_accessor :error, :file

  def initialize(file)
    @error = []
    @file = file
  end

  def indentation(file)
    file.each_with_index do |line, index|
      next unless line.include? ';'

      arr = line.scan(/./)
      @error << "LINE #{index + 1}: There is an indentation error, TWO spaces please" if arr[0] != ' ' || arr[1] != ' ' || arr[2] == ' '
    end
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
      @error << "LINE #{(index + 1)}: There are #{count} semicolumns, remove #{count - 1} please" if count > 1
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
      @error << "LINE #{(index + 1)}: There are #{count} colomns, remove #{count - 1} please" if count > 1
    end
  end

  def colomn_semi_wrong_position(file)
    file.each_with_index do |line, index|
      next unless line.include?(';' && ':')

      arr = line.scan(/./)
      arr.each_with_index do |_val, i|
        if arr[i] == ';' && arr[i + 1] == ':'
          @error << "LINE #{(index + 1)}: Immediate mixture of column and semicolumn, kindly fix"
        elsif arr[i] == ':' && arr[i + 1] == ';'
          @error << "LINE #{(index + 1)}: Immediate mixture of column and semicolumn, kindly fix"
        end
      end
    end
  end

  def multiple_colomn_semicolomn(file)
    file.each_with_index do |line, index|
      next unless line.include?(';' || ':')

      arr = line.scan(/./)
      arr.size
      k = 0
      count = 0
      while k < arr.size
        count += 1 if arr[k] == ':' || arr[k] == ';'
        k += 1
      end
      @error << "LINE #{(index + 1)}: There are a mixture of #{count} colomns/semicolomns, remove #{count - 2} unecessary ones please" if count > 2
    end
  end

  def empty_block(file)
    file.each_with_index do |line, index|
      @error << "LINE #{index + 1}: Block is empty on a single line" if line.match(/{\n*}/)
    end
    @error
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
