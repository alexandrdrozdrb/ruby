# .each .each_with_index .map .select(.filter) .reject .reduce 

# FOR IN 
=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends       # without do
  if friend != "Brian"
    invited_list.push(friend)
  end
end

puts invited_list
=end

# .select => return new array
=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
selected_persons = friends.select {|friend| friend != "Brian"}

puts selected_persons
=end

#.rejecte
=begin
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
selected_persons = friends.reject {|friend| friend == "Brian"}

puts selected_persons
=end

# .each     // .each return original array or hash
=begin
arr = [1, 2, 3]
arr_new = []

arr.each {|el| arr_new.push(el.to_s + "st")}

puts arr_new


my_hash = { "one" => 1, "two" => 2 }

new_hash = {}

my_hash.each {|key, value| new_hash[key] = value*2}

puts new_hash

#.each_with_index \\ return original arr or hash

fruits = ["apple", "banana", "strawberry", "pineapple"]

fruit_even = []


fruits.each_with_index {|fruit, index| fruit_even.push(fruit) if index.even?}

puts fruit_even
=end
=begin

# .map => return new arr or hsh

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

name_upcase = friends.map {|friend| friend.upcase.reverse}

puts name_upcase

my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']

result_of_mapping =  my_order.map { |item| item.gsub('medium', 'extra large') }  # идет по каждому элементу и меняет в строке

puts result_of_mapping
=end

# .reduce \\ return new
=begin
my_numbers = [5, 6, 7, 8]

result_of_reduce = my_numbers.reduce(0) {|sum, number| sum + number}

puts result_of_reduce

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

obj_of_counts = votes.reduce(Hash.new(0)) do |result, value| 
  result[value] += 1
  result
end

puts obj_of_counts

hundreds = Hash.new(100)
hundreds["first"]         #=> 100
hundreds["mine"]          #=> 100
hundreds["yours"]  

puts hundreds["first"]

=end

arr = ["first", "second", "third", "fourth"]


def find_word_lengths(word_list)
  # use #reduce to iterate through each item of the word_list (an array)
  # return a hash with each word as the key and its length as the value
  # hint: look at the documentation and review the reduce examples in basic enumerable 
  
  word_list.reduce(Hash.new(0)) do |hash, item| 
    hash[item] = item.length
    hash
  end
end

puts find_word_lengths(arr)


