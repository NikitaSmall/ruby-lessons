# 1. установили язык (Ruby) (railsinstaller)
# 2. выбрали себе рабочее пространство (просто папку для работы)
# 3. открыли там терминал (git for windows): идем в нужную папку, ПКМ->git bash here
# 4. открыли atom/sublime text в нужной папке
# (открыли редактор file->open folder-> нашли нашу папку и нажали открыть)
# 5. в папке создаем (или открываем) файл (hello_world.rb)
# 6. в нем создаем программу `puts('Ruby is awesome!')`
# 7. запускаем в терминале нашу программу с помощью `ruby hello_world.rb`
# 8. в результате мы должны увидеть вывод программы:
# Ruby is awesome!

# Нам необходимо оказаться в терминале в папке с этим файлом
# и вызвать команду `ruby  [название_файла]`.
# необходимо помнить что перед запуском команды, нужно сохранить файл.
# сохранять очень удобно через сокращение ctrl + s.

# puts('Ruby is awesome!')

# ruby - интерпретируемый язык

# basic math
# +, -, *, /
# %

# puts((3 + 5) + 5)
# puts 12 - 4

# puts 1 + 2 * 3

# результат: 1. Так получается из-за строгой типизации.
# проще говоря, если я передаю целое цисло, то и в результате я хочу получить
# целое число.
# Если мы хотим получить число с плавающей запятой,
# то и передать мы должны число с плавающей запятой.
# puts 6 / 4
# puts 6.0 / 4

# puts ((3 + 5) + 5 / 2 * 14)
# puts ((3 + 5) + 5 / 2 * 14)
# puts ((3 + 5) + 5 / 2 * 14)

# переменные (variable)
# sum = 5 + 5
# puts sum

# result = (3 + 5) + 5 / 2 * 14
# puts result
# puts result
# puts result

# переменные позволяют
# 1. переиспользовать результат вычисленый (возможно, длительных)
# 2. переменная дает имя своим данным и облегчает понимание кода
# крайне желательно называть переменные хорошие (описательными, емкими и понятными) именами

# age = 18 - good
# vasia = 'hello' bad
# hello1111 = 'hello' bad
# first_name = 'Ilia' good

# first_day_of_work = 1 - ruby's standard
# firstDayOfWork = 1 - from non-ruby world

# don't do this in Ruby. Camel case is not used in Ruby
# firstDayOfWork = 1
# puts firstDayOfWork

# gets (get string) - взятие строки у пользователя
# таким образом программа может требовать (!) у пользователя ввода каких-либо данных
# это работает в два этапа:
# 1. от пользователя ожидают ввода любого набора символов до конца (перевода) строки
# 2. после получения ввода (после того как enter был нажат), происходит возврат полученной строки.
# этот результат можно присвоить переменной (спрятать в наш контейнер)
# name = gets.chomp

# raw_input = gets
# input = raw_input.chomp
# name = input.upcase


# puts (put string) - тоже функция которая выводит на экран (в консоль)
# любое переданное в нее значение
# puts name

# your name is _____
# str = 'your name is ' + name  + '. Hello!'
# str = "your name is #{name}. Hello!"
# puts str

# Типы данных
# Integer (целочисленный тип) 0, 42, -347
# Float (число с плавающей запятой) 1.5, 17.23, -5.9, 6.0
# String (строка, набор символов) 'string', 'hello', "Hard to understand\n"
# Boolean (логический тип) true, false
# Block

# В Ruby - все есть объект
# читайте документацию :)

# print(("hello\n\n".chomp).chomp)
# # after the first chomp, we get `hello\n`
# # after the second one, we get `hello`
# # after these changes, we print the string (`hello`)
# puts "new line"


# small preview for future lesson
string = gets.chomp

if string.length > 5
  puts 'it is too long!'
end
