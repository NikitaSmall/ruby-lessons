$stdout.sync = true
require 'mongo'

Mongo::Logger.logger.level = Logger::FATAL
client = Mongo::Client.new(['127.0.0.1'], database: 'ruby')

# student_collection = client[:student]

# student = { name: 'Dima', gender: 'male', age: 14 }
# student_collection.insert_one(student)
#
# array = student_collection.find.to_a
# puts array

# client[:people].insert_one({
#   name: 'Nikita',
#   age: 13,
#   hobbies: ['create games', 'painting'],
#   pets: [
#     {
#       type: 'cat',
#       name: 'Ginger'
#     },
#     {
#       type: 'cat',
#       name: 'Vasya'
#     },
#     {
#       type: 'cat',
#       name: 'Shlema'
#     }
#   ]
# })

human = client[:people].find({ 'pets.0.name' => 'Ginger' }).first
puts human
