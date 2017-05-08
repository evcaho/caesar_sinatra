def cipher(user_input)
	alphabet = ("a".."z").to_a

	index_array = []
	split_input = user_input.split(%r{\s*})
	split_input.each do |character|
		letter_index = alphabet.index(character)
		cipher = letter_index + 5
		letter = alphabet[cipher]
		index_array.push(letter)

	end
	index_array.join()
end

def user_input
	gets.chomp
end
