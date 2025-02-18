=begin

a = {}
b = Hash.new()

puts a, b

obj = {}
obj[:sex] = "female"
obj["age"] = 21
#puts obj[:sex], obj["age"]

puts obj.fetch('hiking')

def coffee
  puts self # current obj
end
puts coffee

def create_favorite_hash(color, number)
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
  
  {
    color: color,
    number: number
    }
    
  end
  
  puts create_favorite_hash('red', 49348)

=end

boj = {color: 'red', number: 4}

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  favorite_list[:number] || 42
end

puts favorite_list(boj)



  