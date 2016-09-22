
def sort_word_sentence(sentence)
	words_array = sentence.split(" ").each {|word| word.gsub!(/[^0-9A-Za-záéíóú]/, "")}.sort_by {|word| word.downcase}
	puts words_array
	puts "\n"
end
sort_word_sentence("Have a nice day")
sort_word_sentence("Ruby is a fun language!")
sort_word_sentence("¿Qué tiempo hará hoy?")
