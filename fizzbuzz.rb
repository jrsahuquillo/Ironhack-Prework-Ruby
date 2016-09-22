# Using for

number = 1
	for number in 1..100
		
		if number%3 == 0 && number%5 == 0
			puts "fizzbuzz"
		elsif number%3 == 0
			puts "fizz"
		elsif number%5 == 0
			puts "buzz"
		else
			puts "#{number}"
	end
end


#Using while
=begin
number = 1
	
	while number <= 100
		if number%3 == 0 && number%5 == 0
			puts "fizzbuzz"
			number +=1
		elsif number%3 == 0
			puts "fizz"
			number +=1
		elsif number%5 == 0
			puts "buzz"
			number +=1
		else
			puts "#{number}"
			number +=1
		end
	end

=end


