# First Method
# text = ''
# line_count = 0
# File.open("oliver.txt").each do |line|
# 	line_count += 1
# 	text << line
# end


# Second Method
lines = File.readlines(ARGV[0]) # ARGV[0] or ARGV.first, allows to take any file on parameters when "a.rb" is executed, ej. ruby a.rb "any_text.txt"
line_count = lines.size
text = lines.join

puts "#{line_count} lines"

# Total Characters
total_characters = text.length
puts "#{total_characters} characters"

# Total Characters no spaces
total_characters_nospaces = text.gsub(/\s+/, '').length
puts "#{total_characters_nospaces} characters excluding spaces"

# Scan words
total_words_scan = text.scan(/\w+/).length
puts "#{total_words_scan} words with scan method"

# Split words
total_words_split = text.split.length
puts "#{total_words_split} words with split method"

# Sentence count
sentence_count = text.split(/\.|\?|!/).length
puts "#{sentence_count} sentences"

# Pharagraph count
paragraph_count = text.split(/\n\n/).length
puts "#{paragraph_count} paragraphs"

# Averages
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{total_words_scan / sentence_count} words per sentence (average)"

# Stop words
stop_words = %w{the a by on for of are with just but and to the my I has some in}
words = text.scan(/\w+/)
good_words = words.select {|word| !stop_words.include?(word)}
puts "#{good_words.length} stop words total"
# puts key_words.join(' ')
good_percentage = ((good_words.length.to_f / words.length.to_f) * 100).to_i

# Sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|\!/)
sentences_sorted = sentences.sort_by{|sentence| sentence.length}
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third / one_third + 1)
# ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/} #=> private method `select' called for " 'Poor dear":String (NoMethodError)
puts "#{sentence_count} sentences"
puts "#{total_words_split / sentence_count} words per sentence(average)"
puts "#{good_percentage}% of words are non-fluff words"
# puts "Summary:\n\n" + ideal_sentences.join(". ") #=> undefined method `join' for " 'Poor dear":String (NoMethodError)
puts "End of analysis"
