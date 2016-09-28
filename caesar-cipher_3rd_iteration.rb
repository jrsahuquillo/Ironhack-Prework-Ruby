# CAESAR CIPHER
## Third iteration


def solve_cipher(input)

#New string that excludes non alphanumerical characters
string = input.gsub(/[^a-z0-9|\s]/i, '')

#Splits the message into into individual letters
string.split('').each do |x|

	chr_code = x.ord - 3 #3 is the default parameter
#Index value for space.
	if x == ' '
		chr_code = 6
	end
#Index value when it´s beyond a.
	if chr_code < 'a'.ord
		chr_code = 'z'.ord - ('a'.ord - chr_code) + 1
	end
#Index value when it´s above z.
	if chr_code > 'z'.ord
		chr_code = 'a'.ord + ('z'.ord + chr_code) - 1
	end

#Prints the list of values into letters
	print chr_code.chr
end

puts "\n"
end


solve_cipher("p| uhdo qdph lv grqdog gxfn")