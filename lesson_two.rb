# эта строка для win отключает кеширование вывода (для экономии ресурсов на платформе win)
# и позволяет производить вывод в консоль по мере необходимости
$stdout.sync = true

# from the previous homework

# name = gets.chomp
#
# greeting = "Hello, #{name}"
# puts greeting

# rand - функция которая возвращает случайное число в  диапазоне от 0 до 1 включительно
# (число с плавающей запятой - float)

# .to_i - метод который превращает значение в целое число
# "5\n"
# "5"
# num = gets.chomp.to_i

# .times - это метод для целочисленных значений и переменных
# который принимает в себя блок кода и выполняет его X раз,
# где X - значение переменной или самого числа

# Блок кода - это некоторый `блок` (или набор) команд которые представяляют собой
# которую самостоятельную подпрограмму.
# блок кода выделяется фигурными скобками в случае когда он однострочный (блок кода)
# в противном случае - блок кода выделяют ключевыми словами do-end
# num.times { puts greeting }

# num.times do
#   puts greeting
# end

# greeting = "Hello, Ivan"
# num = gets.chomp.to_i

# if - end - это специальный оператор, который позволяет выполнить код во внутреннем
# блоке только если переданное условие истинно.
# if <условие>
#   <код для выполнения>
# end
# if num <= 0
#   puts 'number is incorrect, please use positive numbers!'
# else
#   puts 'here is your repetition: '
#
#   num.times do
#     puts greeting
#   end
# end

# условие является типов Boolean. Это всегда одно из двух возможных значений:
# true или false. Если условие истинно (true) - первая часть оператора if будет выполнена
# (это 36ая строка текущего файла)
# если условие ложно (false) - основной блок выполнен не будет, но можно указать
# дополнительное ключевое слово `else` (иначе) в которое можно передать блок кода который
# будет выполняться если условие ложно.
# if [условие]
#   [code]
# else
#  [alter. code]
# end

# 1. слово в приветствии должно быть длиннее 5 символов
# 2. в слове должен встречаться символ `a`
# 3. слово должно начинаться с символа `b`

# word = gets.chomp

# bool = true # or `bool = false`

# don't do this
# if word.length > 5
#   if word.include? 'a'
#     if word[0] == 'b'
#       puts 'yay! word is correct'
#     end
#   end
# end

# word == 'rattle'
# res_first = word.length > 5 # => true
# res_second = word.include?('a') # => true
# res_third = word[0] == 'b' # => false (r != b)
#
# res = res_first && res_second # => true && true == true
# res = res && res_third # => true && false == false

# res = (word.length > 5) && word.include?('a') && (word[0] == 'b')
# if res
#   puts 'yay! word is correct'
# end

# ==, !=, >, <, <=, >=
#
# &&
# ||
# !

# is string empty?
# ""
# is_empty = str == ""
# is_empty = str.length == 0

# str = gets.chomp
# if str.empty?
#   puts 'string is empty!'
# end

# num = gets.chomp.to_i

# is_even = num % 2 == 0
# if num.even?
#   puts 'even!'
# else
#   puts 'odd!'
# end

# is_odd = num % 2 == 1
# is_odd = !is_even

# unless - "синтаксический сахар", это оператор "перевернутого if".
# он выполняет предложенный блок в случае если переданное условие ложно
# unless num.odd?
#   puts 'even!'
# end

# puts 'even!' if num.even?
# puts 'even!' unless num.odd?

students = ['John', 'Mattew', 'Ivan']
# students[0] == 'John'
# students[3] => nil

# students[0] = 'Ann' # => students == ['Ann', 'Mattew', 'Ivan']
# puts students[0]

# students << 'Oleg'
# students.push('Oleg')
# puts students

# .count - метод массива возвращающий его длину
# greeting - здесь это локальная блочная переменная (мы объявили ее здесь и вне этого
# блока мы не сможем к ней обратиться)
# index - принимающая блочная переменная, она "принимает" значения для использования
# его в блоке. Для каждой итерации (повторения исполнения) index будет принимать новое
# значение (сначала 0, затем 1, потом 2)
# students.count.times do |index|
#   # таким образом, с каждый раз новым значением, мы можем обращаться
#   # к новым элементам массива
#   greeting = "Hello, #{students[index]}"
#   puts greeting
# end

# .each - метод для работы с каждым из элементов массива
# именно каждый элемент массива будет передаваться в качестве блочной принимающей переменной
# и именно с ним мы можем работать
# students.each do |student|
#   puts "hello, #{student}"
# end

# "test".each_char { |chr| puts chr }

# .map - метод массива занимающийся модификацией каждого из элементов.
# сами элементы поочередно доступны через принимающую блочную переменную
# на соответствующее место в массивы будет подставлено ПОСЛЕДНЕЕ вычесленное значение
# new_students = students.map do |student|
#   #"doesn't matter!" - не будет играть роли из-за нахождения не перед окончанием блока
#   "hello, #{student}"
# end
#
# new_students.each { |s| puts s }

# это определение функции
# оно состоит из
# имени (после ключевого слова def)
# тела функции (следующая строка и весь до ключевого слова end)
# и опциональных аргументов (принимающая локальная переменная, она может менять логику работы функции)
# def greet(name)
#   greet_text = "hello from function! Hello to #{name}"
#   puts greet_text
# end
#
# students.each do |student|
#   greet(student)
# end

# find max
# 1. взять одно из значений (начнем с начала - 0) как максимальное
# 2. берем следующее число и сравниваем текущее максимальное
# 3. если новое число больше - заменяем им текущее максимальное
# 4. переходим ко второму пункту
# 5. текущее максимальное число - максимальное
numbers = [-5, 12, 4, 0, 21]

# определяем фукнцию max для нахождения максимального элемента в массиве
# number_array - обязательный аргумент
def max(number_array)
  return -9000 if number_array.empty? # number_array.count == 0
  # .first - вспомогательный метод, он возвращает первый элемент массива
  max = number_array.first
  # return -9000 if max.nil? # max == nil

  number_array.each do |num|
    max = num if num > max # сокращенная форма if - end
  end

  # return max - here return is omittable
  max # помним, что из функции (или блока) возвращается последнее вычисленное значение
end

puts max(numbers)
puts max([1, 2, 3])
# how to protect?
# puts max(['max', 'name', nil, false])
puts max([])
# how to stop invalid input?
# puts max([nil, 42])


puts self
