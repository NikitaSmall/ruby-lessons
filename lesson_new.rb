$stdout.sync = true

# 2. loops
times = 5
#
# loop do
#   puts times
#   times -= 1
#   break if times == 0
# end

# 5.downto(1).each do |n|
#   puts n
# end

# while times > 0
#   puts times
#   times -= 1
# end

# if times > 0
#   loop do
#     puts times
#     times -= 1
#
#     break unless times > 0
#   end
# end

number = 42

# case number
# when 42 # number == 42
#   puts 'fourty two'
# when 21 # number == 21
#   puts 'twenty one'
# when 15 # number == 15
#   puts 'number'
# else # in any other case
#   puts 'I do not know that!'
# end
#
# if number == 42
#   puts 'fourty two'
# elsif number == 21
#   puts 'twenty one'
# elsif number == 15
#   puts 'number'
# else
#   puts 'I do not know that!'
# end
#
# string = 'hello'
#
# case
# when number == 42 && string == 'hello'
#   puts 'fourty two'
# when number == 21
#   puts 'twenty one'
# end

class Messager
  def initialize
    @name = 'Ismael'
  end

  def run
    loop do
      puts 'enter your message'
      command = gets.chomp
      puts apply_command(command)

      break if command == '/exit'
    end
  end

  def apply_command(command)
    words = command.split

    case words[0]
    when '/hello'
      'Hello!'
    when '/help'
      help(words)
    when '/time'
      Time.now
    when '/exit'
      'farewell!'
    else
      "I don't know that"
    end
  end

  private

  def help(words)
    result = 'print help'

    if words[1] == 'name'
      result += "you call me #{@name}"
    end

    result
  end
end

# var = Messager.new
# var.run

words = ['any', 'hello', 'my name is', 'world', 'hello', 'work']

# puts words.map { |w| w.length }
# puts words.find { |w| w.length > 4 }
# puts words.join.length
# puts words.reduce(0) { |r, word| r + word.length }

# puts words.all? { |w| w.length.even? }
# puts words.select { |w| w.length.even? }

hash = {
  name: 'vasiliy',
  gender: 'other',
  city: 'odessa'
}

def introduce(man_hash)
  gender = case man_hash[:gender]
  when 'm'
    'a male'
  when 'f'
    'a female'
  else
    'an attack helicopter'
  end
  puts "My name is #{man_hash[:name].capitalize},"
  puts "I am #{gender},"
  puts "I am #{man_hash[:age]} years old."
end

# introduce(hash)

puts hash.all? { |k, v| v.length > 3 }
