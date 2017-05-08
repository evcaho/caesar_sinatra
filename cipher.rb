require 'sinatra'
require 'sinatra/reloader' if development?

def cipher(user_input)
	alphabet = ("a".."z").to_a

	index_array = []
	split_input = user_input.split("")
	split_input.each do |character|
		letter_index = alphabet.index(character)
		cipher = letter_index + 5
		if cipher >= 26
			letter = alphabet[cipher -26 ]
		else
			letter = alphabet[cipher]
		end
		index_array.push(letter)

	end
	index_array.join()
end

get '/' do
	guess = params["guess"].to_s
	message = cipher(guess)
	little_ditty = "hahaha! Now you'll never know what you just said!"
	erb :index, :locals => {:message => message, :little_ditty => little_ditty}
end
