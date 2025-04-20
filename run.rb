# run.rb

require_relative './lib/string_calculator'

calc = StringCalculator.new

puts "----- String Calculator Manual Run -----"

begin
  puts "Test 1 - Empty string: #{calc.add("")} (Expected: 0)"
  puts "Test 2 - One number: #{calc.add("4")} (Expected: 4)"
  puts "Test 3 - Two numbers: #{calc.add("1,2")} (Expected: 3)"
  puts "Test 4 - Multiple numbers: #{calc.add("1,2,3,4")} (Expected: 10)"
  puts "Test 5 - Newline delimiter: #{calc.add("1\n2,3")} (Expected: 6)"
  puts "Test 6 - Custom delimiter: #{calc.add("//;\n1;2")} (Expected: 3)"

  puts "Test 7 - Negative numbers (should raise error):"
  puts calc.add("1,-2,-3")
rescue => e
  puts "  🚨 Exception: #{e.message}"
end
