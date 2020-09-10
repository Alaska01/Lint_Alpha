#!/usr/bin/env ruby
require 'colorize'
require '../lib/styling.rb'
require '../lib/messaging.rb'
file = File.open(ARGV.first).to_a
new_testing = StylingRules.new(file)
puts
puts 'We are running a CSS Linter Experimental test on multiple columns, semicolumns, wrong indentation etc'.yellow
puts 'Enjoy writing and testing CSS codes with Alpha-Lint'.green
puts

new_testing.multiple_colomn(file)
new_testing.multiple_semicolomn(file)
new_testing.empty_block(file)
new_testing.opening_brace_space(file)
new_testing.indentation(file)
puts new_testing.error_message
puts new_testing.clear_message
puts Messaging::DONE
puts 'If you enjoyed using this Linter Kindly recommend it to a coleague'.blue if new_testing.clear_message
