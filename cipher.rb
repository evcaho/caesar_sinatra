require 'sinatra'
require 'sinatra/reloader' if development?

def cipher(user_input)
	alphabet = ("a".."z").to_a

	index_array = []
	split_input = user_input.split("")
	split_input.each do |character|
		letter_index = alphabet.index(character)
		if character != " "
			cipher = letter_index + 5
			if cipher >= 26
				letter = alphabet[cipher -26 ]
			else
				letter = alphabet[cipher]
			end
		else
			letter = " "
		end
		index_array.push(letter)

	end
	index_array.join()
end

def teaser(user_input)
	input_array = user_input.split("").to_a
	if ("a".."z").include?(input_array[0])
		"hahaha! Now you'll never know what you just said!"
	end
end


get '/' do
	guess = params["guess"].to_s
	message = cipher(guess)
	teaser = teaser(guess)
	erb :index, :locals => {:message => message, :teaser => teaser}
end
