require 'sinatra'

def get_birth_path_num(birthdate)
number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
 
number = number.to_s
number = number[0].to_i + number[1].to_i
 
if number > 9
number = number[0].to_i + number[1].to_i
end
 
return number
end
 
def get_message(birth_path_num)
case birth_path_num
when 1
message = "Your numerology number is #{birth_path_num}.\nOne is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
when 2
message = "Your numerology number is #{birth_path_num}.\nThis is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
# ...and so on, 1-9
else
message = "Uh oh! Your birth path number is not 1-9!"
end
end

get '/:birthdate' do
	birthdate = params[:birthdate]
	birth_path_num = get_birth_path_num(birthdate)
	message = get_message(birth_path_num)
	"#{message}" 
end


	