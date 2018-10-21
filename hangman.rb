$stdout.sync = true

# hangman
# 1. pick the word
# 2. prepare the answer
# 3. start the game loop
# 4. user's input
# 5. process the input (compare the word and the symbol, check it for the result)
# 6. check the life counter
# 7. print the result

def user_input
  gets.chomp
end

def process(secret_word, input, visible_answer)
  secret_word.split('').each_with_index do |char, i|
    if input == char
      visible_answer[i] = char
    end
  end

  visible_answer
end

words = ['apple', 'elephant', 'school', 'paint', 'king']

secret = words.sample

visible_answer = '.' * secret.length # secret.split('').map { '_' }.join

loop do
  puts visible_answer
  char = user_input

  visible_answer = process(secret, char, visible_answer)
  if !visible_answer.include?('.')
    puts 'you are the winner!'
    break
  end
end
