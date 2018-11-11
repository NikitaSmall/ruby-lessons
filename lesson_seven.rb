$stdout.sync = true

# variable & 
name = 'Vasiliy'
result = 42 + 12

number = 42

secret = 'secret'.upcase

# types
# string, number(integer, float), nil, bool (true, false), symbol

# advanced types
# array, hash

unless number == 2 # => bool (true/false)
	puts 'never happens'
else
	puts 'hello!'
end

# unless number == 2 # if number != 2 # if !(number == 2)
# && - AND => x && y
# || - OR => (x || y)
# ! - NOT => !x

# function
def add_hash(hash)
	# add hash to the DB
end

10000.times do |i|
	add_hash('wasd')
end

dogs = ['foxy', 'nika', 'max']
dogs.shuffle.each do |dog|
	puts "come here #{dog}"
end

cats = [
	{ name: 'Ginger', color: 'ginger', age: '4 years' },
	{ name: 'Blackie', color: 'black', age: '2 years' }
]

ages = cats.map do |cat|
	cat[:age].to_i
end

p ages.each { |a| puts a }

class Cat
	attr_reader :age

	def initialize(name)
		@name = name
		@age = 0
	end

	def meow
		puts 'meow!'
	end

	def happy_bday
		puts 'hooray!'
		@age += 1
	end
end

cat = Cat.new('Marlen')
cat.happy_bday
cat.happy_bday
# ???
puts cat.age