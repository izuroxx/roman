

puts "Insert digits (1-3999): "
	num = gets.chomp

		
	if num.to_i > 3999
		abort ( "Num range 1-3999. Please reload" )
	end	
	
	digits = num.to_s.split("").map(&:to_i).reverse
	

	romans = [{0 => "", 1 => "I", 2 => "II", 3 => "III", 4 => "IV", 5 => "V", 6 => "VI", 7 => "VII", 8 => "VIII", 9 => "IX"},
	 {0 => "", 1 => "X", 2 => "XX", 3 => "XXX", 4 => "XL", 5 => "L", 6 => "LX", 7 => "LXX", 8 => "LXXX", 9 => "XC"},
	  {0 => "", 1 => "C", 2 => "CC", 3 => "CCC", 4 => "CD", 5 => "D", 6 => "DC", 7 => "DCC", 8 => "DCCC", 9 => "CM"},
	   {0 => "", 1 => "M", 2 => "MM", 3 => "MMM"}]


	i = 0
	for digit in digits 

		 
		temp_roman = romans[i][digit]
			
		i += 1		
			
		roman = "#{temp_roman}#{roman}" 
			 
	end	


	puts roman


		

		

		