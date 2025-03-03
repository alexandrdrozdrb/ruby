=begin
# MUTABLE
mutable = Array.new(3, Array.new(2))
#=> [[nil, nil], [nil, nil], [nil, nil]]
mutable[0][0] = 1000
#=> 1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]
=end

=begin
# IMMUTABLE
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

=end

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

=begin
teacher_mailboxes.each_with_index do |row, row_idx|
    puts "Row: #{row_idx} ==> #{row}"

end
=end

teacher_mailboxes.each_with_index do |row, row_idx|
  row.each_with_index do |column, column_idx|   
    puts "Row: #{row_idx}, Column: #{column_idx} ==> #{column}"
  end
end



