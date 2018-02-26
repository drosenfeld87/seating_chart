seating_plan = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

seating_plan.each_with_index do |row, row_num|
  row.each_with_index do |seat, seat_num|
    if seat == nil
      puts "row #{row_num +1} seat #{seat_num +1} is free. Do you want to sit here? (y/n)"
      answer = gets.chomp
      if answer == "y"
        puts "What is your name?"
        name = gets.chomp
        seating_plan[row_num][seat_num] = name
      end
    end
  end
end

puts seating_plan

# seating_plan.each_with_index do |row, row_num|
#   row.each_with_index do |seat, seat_num|
#     if seat == nil
#       puts "row #{row_num +1} seat #{seat_num +1} is free"
#     end
#   end
# end
