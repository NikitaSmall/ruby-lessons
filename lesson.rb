$stdout.sync = true

class Animal
  def walk
    puts 'I can walk'
  end

  def alive
    puts "it's alive!"
  end
end

class Bird < Animal
  def fly
    puts 'I can fly!'
  end
end

class Pinguin < Bird
  def fly
    puts 'it fears the high places'
  end

  def swim
    puts 'I can swim'
  end
end

class Fish < Animal
  def swim
    puts 'I can swim'
  end

  def walk
    puts "I can't walk actually"
  end
end

class Swallow < Bird
end

s = Swallow.new
s.alive
s.walk
s.fly
