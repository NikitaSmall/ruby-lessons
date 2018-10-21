# создаем класс который будет содержать логику игры "виселица"
class Hangman
  # это "константы" - значения, которые не изменяются на протяжении
  # работы программы (и объектов этого класса)
  # к ним есть доступ отовсюду (но нам интересен доступ внутри класса)
  DICTIONARY = ['apple', 'elephant', 'school', 'paint', 'king']

  PLACEHOLDER_CHAR = '?'
  STARTING_LIFE = 7

  def initialize # срабатывает при вызове Hangman.new
    @life_count = STARTING_LIFE # состония - state
    @secret = DICTIONARY.sample
    @visible_answer = PLACEHOLDER_CHAR * @secret.length # state
  end

  # public
  # это основной метод игры. При его вызове начинается весь игровой процесс
  def play
    loop do
      print_visible
      char = user_input

      process_input(char)

      # return congratulate if win?
      if win?
        congratulate
        return
      end

      # return read_instruction if failure?
      if failure?
        read_instruction
        return
      end
    end
  end

  private

  def process_input(char)
    if !@secret.include?(char)
      @life_count -= 1
      return
    end

    @secret.split('').each_with_index do |c, i|
      @visible_answer[i] = char if c == char
    end
  end

  def print_visible
    puts 'Placeholder: '
    puts @visible_answer
    puts "Lives left: #{@life_count}"
  end

  def user_input
    input = gets.chomp

    if input.length != 1
      puts 'print single char only!'
      return user_input
    end

    input
  end

  def win?
    !@visible_answer.include?(PLACEHOLDER_CHAR)
  end

  def failure?
    @life_count <= 0
  end

  def congratulate
    puts 'you are the winner'
  end

  def read_instruction
    puts 'better luck next time'
  end
end
