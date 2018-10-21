# array

# numeric_array = [4, 8, 15, 16, 23, 42]
# mixed_array = [nil, 42, 'string', true]

# human = ['Nikita', 13, 'Odessa', 'm']
# puts human[2]

# hash
# Hash - класс в Ruby (тип данных) для хранения набора уникальных ключей
# и соответствующих этим ключам значений.
# ключи следует делать двух типов: строка или символ
# соответствующее значение может быть любого типа
# human = {
#   name: 'Nikita',
#   age: 13,
#   address: 'Odessa',
#   gender: 'm'
# }

# puts human[:name] # => 'Nikita'
# puts human[:address] # => 'Odessa'

# human[:age] = 14
# human[:edu] = '111'
# puts human
#
# puts human[:work] # => nil

# baby = {}
# puts baby
#
# it_symbol = :hello

string_human = {
  'name' => 'Nikita',
  'age' => 13,
  'address' => 'Odessa',
  'gender' => 'm'
}

# puts string_human

# puts string_human['name']
# could be used to shorten the programmer's input #we_are_lazy
string_human['age'] += 1 # string_human['age'] = string_human['age'] + 1

# инициируем пустой хеш (пустое хранилище набора ключ-значение)
# в нем пока нет ни одной пары (ключ-значение), а потому обращение по любому
# ключу (не важно, строка или символ) будет возвращать nil
res = {} # Hash.new

# забираем пользовательский ввод
# example = gets.chomp
#
# # разбиваем строку посимвольно с помощью метода split
# # мы передаем в этот метод _строку-разделитель_ который определяет как разбить
# # строку и превратить ее в массив (например, '' [пустая строка] разобьет посимвольно)
# # мы проходим по каждому символу
# example.split('').each do |char|
#   # если char уже встречается в качестве ключа, то мы модифицируем значение прибавляя единицу
#   # если нет, то res[char] == nil и мы впервые указываем первичное значение (1)
#   if res[char].nil?
#     res[char] = 1
#   else
#     res[char] += 1
#   end
# end
# данный пример собирает количество вхождений символов в строку

# puts res

# str = String.new
# str = 'hello'
# puts str.length

# класс - это своего рода "шаблон" для пока несуществующих объектов
# в нем мы можем определить каркас свойств и поведения объектов
# для определения классов используется ключевое слово class
class Cat
  # initialize - это специальное (!) название для метода который срабатывает
  # во время вызова ClassName.new (с соответствующими аргументами передающимися в метод)
  def initialize(name) # можно передавать аргументы как в обычный метод
    # переменные которые имеют @ перед названием называются свойствами объекта
    # мы не можем обратиться к ним без инициализации
    @name = name
    @voice = 'meow!'
  end

  # в теле класса можно определять другие методы (объекта)
  # их можно будет вызывать у любого созданного (инициализированного) объекта
  def speak
    puts @voice
  end

  def call
    # в методах мы можем использовать, менять и создавать новые свойства объекта
    puts "#{@name}, come here!"
  end
end

# пример инициализации объекта
my_cat = Cat.new('Ginger')
another_cat = Cat.new('Muusya')
#
# puts my_cat
# # puts another_cat
#
# my_cat.call
# another_cat.call

class Human
  # attr_* - это сокращение (синтаксический сахар)
  # который открывает доступ к чтению и/или изменению свойств
  attr_reader :cat, :name
  # def cat
  #   @cat
  # end

  attr_writer :cat
  # def cat=(cat)
  #   @cat = cat
  # end

  # attr_accessor :cat
  # сокращенная запись от
  # attr_reader :cat
  # attr_writer :cat

  def initialize(name, cat)
    @name = name
    @cat = cat
  end

  def cat_call
    @cat.call
  end
end

# можно передавать как значения, так и переменные (и даже другие объекты!)
human =  Human.new('Nikita', my_cat)

# переопределение свойства объекта
human.cat = another_cat

# вызов метода объекта
human.cat_call

# обращение (чтение) свойства объекта
puts human.name

words = ['apple', 'word', 'world', 'cat', 'silence']

puts words.sample
