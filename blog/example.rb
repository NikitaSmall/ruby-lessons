require 'json'

variable = [
  { value: 42, text: 'Hello world!' },
  { value: 44, text: 'Hello world!' }
]

json_str = variable.to_json

f = File.new('json.txt', 'w')
f.write(json_str)
f.close

file_str = File.new('json.txt', 'r').read
puts file_str
value = JSON.parse(file_str, symbolize_names: true)

puts value[0][:value]
