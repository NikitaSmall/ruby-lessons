$stdout.sync = true

$stdout.sync = true

str = 'oh be a fine girl kiss me'
# SEPARATOR_FOR_CHARACTERS = ''
def char_stat(str)
  count_statistics(str, '')
end

# SEPARATOR_FOR_WORDS
def word_stat(str)
  count_statistics(str, ' ')
end

def count_statistics(str, separator)
  res = Hash.new(0)
  str.split(separator).each { |char| res[char] += 1 }

  res
end

# puts char_stat(str)
