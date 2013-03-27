
print "How far will you drive? > "
d = gets.strip.chomp.to_f

print "What is your cars MPG? > "
mpg = gets.strip.chomp.to_f

print "How much is a gallon of gas? > "
price = gets.strip.chomp.to_f

print "How fast will you drive? > "
speed = gets.strip.chomp.to_f

puts "Your trip will take #{(d/speed).round(2)} hours, and cost $#{((d/mpg)*price).round(2)}"
