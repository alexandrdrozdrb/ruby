# 1. устанавливаем в терминале ==> gem install ruby-debug-ide
# 2. также в терминале ==> gem install pry-byebug
# 3. в начале нашего рубифайла прописываем require 'pry-byebug'
# 4. breakpoint (точка останова) выставляем в нужном месле используя в коде binding.pry
# 5. запускаем файл обычным способом типа ruby debugging.rb

# ==> we can debug by puts (another way of debugging)

#require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split('')
  puts string_array
  unique_length = string_array.uniq.length
  puts unique_length
  original_length == unique_length
end

puts isogram?("Odin")