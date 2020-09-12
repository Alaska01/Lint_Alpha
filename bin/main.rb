# !/usr/bin/env ruby

require 'colorize'
require_relative '../lib/styles/styling.rb'
require_relative '../lib/message/messaging.rb'
file = File.open(ARGV.first).to_a
new_testing = StylingRules.new(file)
puts
puts 'We are running a CSS Linter Experimental test on multiple columns, semicolumns, wrong indentation etc'.yellow
puts 'Enjoy writing and testing CSS codes with Alpha-Lint'.green
puts
new_testing.indentation(file)
new_testing.multiple_semicolomn(file)
new_testing.multiple_colomn(file)
new_testing.colomn_semi_wrong_position(file)
new_testing.multiple_colomn_semicolomn(file)
new_testing.empty_block(file)
puts new_testing.error_message
puts new_testing.clear_message
puts Messaging::DONE
puts 'If you enjoyed using this Linter Kindly recommend it to a coleague'.blue if new_testing.clear_message
