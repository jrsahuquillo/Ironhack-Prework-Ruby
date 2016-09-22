# Iteration 3

number = 1
	for number in 1..100
		if number%3 == 0 && number%5 == 0 && number.to_s.start_with?("1")
			puts "fizzbuzzbang"
		elsif number%3 == 0 && number%5 == 0
			puts "fizzbuzz"
		elsif number%5 == 0 && number.to_s.start_with?("1")
			puts "buzzbang"
		elsif number%3 == 0 && number.to_s.start_with?("1")
			puts "fizzbang"
		elsif number%3 == 0
			puts "fizz"
		elsif number%5 == 0
			puts "buzz"
		elsif number.to_s.start_with?("1")
			puts "bang"
		else
			puts "#{number}"
	end
end


## Iteration 4 (Don't concatenates Fizz+Buzz+Bang!!)
num = 1
for num in 1..100 

    result = ""

    if num % 3 == 0
        result << "Fizz"
    elsif num % 5 == 0
        result << "Buzz"
    elsif num.to_s.start_with?("1")
        result << "Bang"
    else
        result << num.to_s
    end
    puts result
 end

    

