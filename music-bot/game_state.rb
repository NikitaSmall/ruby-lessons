class GameState
  attr_accessor :life, :word, :visible_answer
  # def initialize
  # end

  def pick(word)
    @word = word
    @life = 7
    @visible_answer = '.' * @word.length
  end

  def process(input)
    if !@word.include?(input)
      @life -= 1
      return
    end

    @word.split('').each_with_index do |char, i|
      if input == char
        @visible_answer[i] = char
      end
    end
  end

  def status
    message = 'run /start to restart the game.'
    return "#{message} you've lost the game" if @life <= 0

    return "#{message} you are the winner!" if @visible_answer ==  @word

    @visible_answer
  end
end
