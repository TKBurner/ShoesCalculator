
print "How much do you weigh in lbs? > "
lb = gets.strip.chomp.to_f

print "How tall are you in inches? > "
h = gets.strip.chomp.to_f

bmi = ((lb/(h**2))*703).round(2)

puts "Your BMI is #{bmi}"

case bmi
	when 0..18.5
		puts "You are underweight"
	when 18.5..24.9
		puts "You are normal weight!"
	when 24.9..29.9
		puts "You are overweight."
	else
		puts "You are severly overweight"
		end
