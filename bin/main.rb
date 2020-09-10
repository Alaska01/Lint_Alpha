#!/usr/bin/env ruby
require 'colorize'
require '../lib/styling_rules.rb'
puts 'Hello World of Testing code'.colorize(:green)

file = File.open(ARGV.first).to_a
new_testing = StylingRules.new
puts
puts "We are running a CSS Linter Experimental test on multiple columns, semicolumns, wrong indentation etc".yellow
puts "Enjoy writing and testing CSS codes with Alpha-Lint".green
puts

new_testing.multiple_colomn(file)
new_testing.multiple_semicolomn(file)
new_testing.empty_block(file)
new_testing.opening_brace_space(file)
new_testing.indentation(file)
puts new_testing.error_message
puts new_testing.clear_message
if new_testing.clear_message
  puts "If you enjoyed using this Linter Kindly recommend it to a coleague".blue
end