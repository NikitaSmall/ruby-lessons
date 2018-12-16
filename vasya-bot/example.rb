str = '/blog create topic some text about the topic'
str.split[2]

puts str.split[3..(str.split.length-1)].join(' ')
