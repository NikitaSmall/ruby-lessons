def normalize!(names)
  if names.any? { |name| name.class != String }
    raise 'invalid input for `normalize` method'
  end

  names.map { |name| name.downcase.capitalize }
end

# names = ['vAsiliy', 'ignat', 'aNN']
names = ['vAsiliy', 42, nil]

puts normalize!(names)
