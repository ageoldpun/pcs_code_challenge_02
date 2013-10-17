#Creates a global method H which will output "Hello World"
def h
    puts "Hello World"
end

#Class for funny joke.  Ha Ha.
class HQ9F
  def initialize
    @accumulator = 0
  end

  def _99(num_beer)
    until num_beer == 0
      puts "#{num_beer.to_s} bottles of beer on the wall, #{num_beer.to_s} bottles of beer.\nTake one down, pass it around, #{(num_beer-1).to_s} bottles of beer on the wall."
      num_beer -= 1
    end
    puts "No more beer.  Time to pass out next to the toilet."
  end

  def +
    @accumulator += 1
  end
end

h

test = HQ9F.new
puts "#{test._99(99)}"