#!/usr/bin/env ruby
# frozen_string_literal: true

# permuate method recursively call itself and prints all possible permuatation of given string
def permute(str, first, last)
  if first == last 
    puts str.join('')
  else
    (first..last).to_a.each do |i|
      # to avoid duplicate
      if str[i] == str[i+1]
        next
      end
      str[first],str[i] = str[i],str[first]
      permute(str, first+1, last)
      str[first],str[i] = str[i],str[first]

    end
  end
end


def main
	puts 'Please input input str'
	str = gets.chomp
  puts 'please input length of string  for permutation'
  n = gets.to_i
  if n > str.size
    puts 'input length cannot be greater the size of string'
    return 
  end
  # input string to permute method with first n chars 
  permute(str[0..n-1].split(//).sort, 0, n-1)
end

main