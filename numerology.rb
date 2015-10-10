# Numerology App

def get_birth_path_num(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

	number = number.to_s
	number = number[0].to_i + number[1].to_i

	if number > 9
		number = number.to_s
		number = number[0].to_i + number[1].to_i
	end

	return number
end

def get_message(birth_path_num)
	case birth_path_num
	when 1
		message = "Your birth path number is #{birth_path_num}."
	when 2
		message = "Your birth path number is #{birth_path_num}."
	when 3
		message = "Your birth path number is #{birth_path_num}."
	when 4
		message = "Your birth path number is #{birth_path_num}."
	when 5
		message = "Your birth path number is #{birth_path_num}."
	when 6
		message = "Your birth path number is #{birth_path_num}."
	when 7 
		message = "Your birth path number is #{birth_path_num}."
	when 8
		message = "Your birth path number is #{birth_path_num}."
	when 9 
		message = "Your birth path number is #{birth_path_num}."
	else
		message = "Uh oh! Your birth path number is not 1-9!"
	end
end

puts "What is your birthdate? Please write it in this formate: MMDDYYYY"
birthdate = gets 

birth_path_num = get_birth_path_num(birthdate)
message = get_message(birth_path_num)
puts message
		
		