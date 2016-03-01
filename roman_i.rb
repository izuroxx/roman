

puts "Insert digits (1-3999): "
	num = gets.chomp

	#puts "num: #{num}"
	
	if num.to_i > 3999
		abort ( "Num range 1-3999. Please reload" )
	end	
	
	digits = num.to_s.split("").map(&:to_i)
	#puts "digits: #{digits}"

	jed = {0 => "", 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX"}
	dzies = {0 => "", 1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC"}
	set = {0 => "", 1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => "CM"}
	tys = {0 => "", 1 => "M", 2 => "MM", 3 => "MMM"}


	i = 1
	for digit in digits 

		p_roman = ""
		

		if i == 1
			p_roman = tys[digit]
				
			# puts p_roman

		elsif i == 2
		 	p_roman = set[digit]
			 	
		 	# puts p_roman
			 
		elsif i == 3

		 	p_roman = dzies[digit]
		 	
		 	# puts p_roman
			
			else i == 4
			 	
			p_roman = jed[digit]
				
			# puts p_roman
			
		end

		# puts "iteracja: #{i}"
			
		i += 1

		
			
	roman = " #{roman}#{p_roman}" 
			 
	end	


	puts roman


		

		

		