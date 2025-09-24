#!/usr/bin/env ruby

# Test script for enum_each_with_index_patched with offset functionality

# This is a simple test to verify the offset functionality works
# Note: This assumes the patched function is available in the Ruby runtime

puts "Testing each_with_index with offset..."

# Test with an array
arr = ['a', 'b', 'c', 'd']
result = []

puts "Original array: #{arr}"

# Test with offset of 5
puts "\nTesting with offset 5:"
arr.each_with_index_patched(5) do |element, index|
  result << [element, index]
  puts "Element: #{element}, Index: #{index}"
end

puts "Result: #{result}"

# Test with offset of 0 (should behave like regular each_with_index)
puts "\nTesting with offset 0:"
result2 = []
arr.each_with_index_patched(0) do |element, index|
  result2 << [element, index]
  puts "Element: #{element}, Index: #{index}"
end

puts "Result: #{result2}"

# Test with negative offset
puts "\nTesting with offset -2:"
result3 = []
arr.each_with_index_patched(-2) do |element, index|
  result3 << [element, index]
  puts "Element: #{element}, Index: #{index}"
end

puts "Result: #{result3}"
