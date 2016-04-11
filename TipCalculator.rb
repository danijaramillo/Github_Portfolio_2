puts "What is the bill total?"
bill = gets.chomp.to_f

unless bill > 0
  puts "Try another number?"
  bill = gets.chomp.to_f
end
puts "What tip percentage would you like to give?"
puts "Tip percentage: %15(a) %18(b) %20(c) custom(d)"
tip_percentage_option = gets.downcase.chomp

tip_choices = ["a","b","c","d"]

until tip_choices.include?(tip_percentage_option)
  puts "Choose: a, b, c, d"
  tip_percentage_option = gets.downcase.chomp
end

case tip_percentage_option
when "a"
  tip = bill * 0.15.round(2)
when "b"
  tip = bill * 0.18.round(2)
when "c"
  tip = bill * 0.20.round(2)
when "d"
  puts "What % would you like to tip?"
  custom = gets.chomp.to_f
  until custom > 0
    puts "Don't try to break the code!"
    puts "What % would you like to tip?"
    custom = gets.chomp.to_f
  end
  custom_percent = custom * 0.01
  tip = bill * custom_percent.round(2)

else
  puts "Somthing went wrong."
  exit
end

total_bill = bill + tip

puts "The total bill: $#{total_bill}"
puts "Would you like to split the bill?"

puts yes_no = "yes or no?"
split_bill = gets.chomp.downcase

until split_bill == "yes" || split_bill == "no"
  puts yes_no
  split_bill = gets.chomp.downcase
end

if split_bill == "yes"
  puts "how many ways would you like to split it?"
  amount_divided = gets.chomp.to_f
  unless amount_divided > 0
    puts "how many ways would you like to split it?"
    amount_divided = gets.chomp.to_f
  end
  totalbill_divided = total_bill / amount_divided
  puts "Here is your receipt:"
else
  puts "Here is your receipt:"
  totalbill_divided = total_bill
end

puts "*" * 30
puts "total bill: $#{'%.2f' % bill}"
puts "Total tip: $#{'%.2f' % tip}"
puts "Total bill + tip: $#{'%.2f' % total_bill}"
puts "Toal amount per person: $#{'%.2f' % totalbill_divided}"
puts "*" * 30
