# эта строка для win отключает кеширование вывода (для экономии ресурсов на платформе win)
# и позволяет производить вывод в консоль по мере необходимости
$stdout.sync = true

# 1. init the number random number
# 2. take and parse user's input
# 3. evaluate user's input (whether it's correct)
# 4. congratulate the user
# 5. make a hint

def take_limit_from_user
  puts 'choose `easy`, `medium`, `hard`'
  case gets.chomp
  when 'easy'
    20
  when 'medium'
    40
  when 'hard'
    100
  else
    40
  end
end

# метод rand вернет нам случайное значение
# от 0 до max если max - целое
def init_random(max)
  rand(max)
end

# этот метод принимает пользовательский ввод и переводит его в целое число
def take_input
  puts 'enter your guess: '
  gets.chomp.to_i
end

# метод принимает в себя догадку пользователя и секретное (загаданое) число
# метод должен вернуть одно из трех значений: -1, 0, 1
# (оригинальное число больше, они равны, оригинальное число меньше)
def evaluate_guess(guess, secret)
  guess <=> secret
end

def congratulate
  puts 'You are the winner!'
end

# данный метод анализирует содержимое переменной res
# и делает подсказку на основе результата (-1 либо 1)
# в этом помогает оператор case/when
# данный оператор является синтаксическим сахаром который
# который является альтернативой множественному набору if/end
def hint(res)
  case res
  when 1
    puts 'secret number is smaller'
  when -1
    puts 'secret number is bigger'
  end
end
