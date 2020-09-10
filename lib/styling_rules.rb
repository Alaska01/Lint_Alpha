require 'colorize'
file = File.open(ARGV[0])

class StylingRules
  attr_reader :error, :file
  def initialize
    @error = []
    @file = file
  end



end