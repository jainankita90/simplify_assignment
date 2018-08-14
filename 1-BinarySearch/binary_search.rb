#!/usr/bin/env ruby
# frozen_string_literal: true

# this method will search element from sorted array 
# inputs args sorted_array , element
# returns position of element  if element is found
# return nil of not found
# index starts is 0 to size - 1

def binary_search(sorted_array, element)
  len = sorted_array.size
  start = 0
  last = len - 1
  while start <= last
    mid = (start + last) / 2
    return mid if sorted_array[mid] == element
    if sorted_array[mid] < element
      last = mid - 1
    else
      start = mid + 1
    end
  end
end

# this is main methods 
def main
  puts 'Please input uniq elements of array in desc order seperated by ,'
  sorted_array = gets.split(',').map(&:to_i)
  unless sorted_array == sorted_array.sort.reverse
    puts  "Array is not sorted in desc order"
    return
  end

  puts 'Please input element to be searched'
  element = gets.to_i
  position = binary_search(sorted_array, element)
  puts "position is #{position.inspect}"
end

main
