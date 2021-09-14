require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...


puts "Enter store name:"
@newstorename = gets.chomp


# puts "Enter store revenue:"
# @newstorevenue = gets.chomp.to_i

# puts "Does store have mens apparel? true or false:"
# @newstoremen = gets.chomp

# puts "Does store have womens apparel? true or false:"
# @newstorewomen = gets.chomp


# @newStore = Store.create(name: "#{@newstorename}", annual_revenue: "#{@newstorevenue}", mens_apparel: "#{@newstoremen}", womens_apparel: "#{@newstorewomen}" )
@newStore = Store.create(name: "#{@newstorename}")

@newStore.errors.full_messages.each do |message|

  puts message
end