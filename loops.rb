=begin
i = 0

loop do 
    puts "i equal to #{i}"
    i += 1
    break if i == 10
end

i = 0

while i <= 10 do
    puts " i => #{i}"
    i += 2
end


for i in 5..10
    puts "i ==> #{i}"
end


5.times do 
    puts "Five times it return this sentence"
end


7.times do |number|
    puts "alternative fact number #{number}"
end


5.upto(10) { |num| print "#{num} " }

10.downto(5) { |num| print "#{num} " }
=end