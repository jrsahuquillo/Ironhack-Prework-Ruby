# CAESAR CIPHER
## First iteration


def solve_cipher(input)

#New string that excludes non alphanumerical characters
string = input.gsub(/[^a-z0-9| \s]/i, '')

#Splits the message into into individual letters
string.split('').each do |x| 

	chr_code = x.ord - 1

#Index value when it´s beyond a.
	if chr_code < 'a'.ord
		chr_code = 'z'.ord
	end
#Prints the list of values into letters
	print chr_code.chr
end

puts "\n"

end

solve_cipher("ifmmp")
solve_cipher("apof")

