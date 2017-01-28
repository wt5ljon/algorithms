def integer_to_roman(roman_mapping, number, result = "")
	if number == 0
		return result	  
	else
		roman_mapping.keys.each do |key|
			quotient, modulus = number.divmod(key)
			result << roman_mapping[key] * quotient
			return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
		end
	end
end

def roman_to_integer(roman_mapping, number, result=0)
	if number == ""
		return result
	else
		roman_mapping.keys.each do |key|
			if number[0] == key
				result += roman_mapping[key]
				return roman_to_integer(roman_mapping, number[1..-1], result)
			elsif number[0..1] == key
				result += roman_mapping[key]
				return roman_to_integer(roman_mapping, number[2..-1], result)
			end
		end
	end
end

roman_mapping1 = { 
	1000 => "M", 
	900 => "CM", 
	500 => "D",
	400 => "CD",
	100 => "C",
	90 => "XC",
	50 => "L",
	40 => "XL",
	10 => "X",
	9 => "IX",
	5 => "V",
	4 => "IV",
	1 => "I"
}

roman_mapping2 = {
	"M" => 1000,
	"CM" => 900,
	"D" => 500,
	"CD" => 400,
	"C" => 100,
	"XC" => 90,
	"L" => 50,
	"XL" => 40,
	"X" => 10,
	"IX" => 9,
	"V" => 5,
	"IV" => 4,
	"I" => 1
}

puts integer_to_roman(roman_mapping1, 2017)
puts integer_to_roman(roman_mapping1, 1964)
puts integer_to_roman(roman_mapping1, 1643)
puts
puts roman_to_integer(roman_mapping2, "MMXVII")
puts roman_to_integer(roman_mapping2, "MCMLXIV")
puts roman_to_integer(roman_mapping2, "MDCXLIII")
puts

