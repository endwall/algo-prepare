#! /usr/bin/env rake

$LOAD_PATH << File.dirname(__FILE__)
require 'div.rb'

$stdout.sync = true
$stderr.sync = true

desc "div"
task :div, [:num1, :num2] do |t, args|
  div = SimpleDiv.new
#  result = div.closest(args[:num1].to_i,args[:num2].to_i)
  result = 0
  result = div.div(args[:num1].to_i, args[:num2].to_i, result)
  puts result
end