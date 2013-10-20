require 'minitest/autorun'

# Creates a global method H which will output "Hello World"
def h
  puts "Hello World"
end

# Class for funny joke.  Ha Ha.
class HQ9F
  include Enumerable

  def initialize
    @accumulator = 0
  end

  def array= value
    @array = value
  end

  # delegation
  def each &block
    @array.each(&block)
  end

  def _99(num_beer)
    song = ""
    num_beer.downto(1) do |num|
      song << "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"
      song << "Take one down, pass it around, #{num-1} bottles of beer on the wall.\n"
    end
    song << %!"Schno m're beers.  Time to 'er nap nescht to ther terlet."\n!
  end

  def +
    @accumulator += 1
  end
end

# A class setup specifically for using Minitest
class TestMyClass < MiniTest::Unit::TestCase
  def setup
    @hq9f = HQ9F.new
  end

  def test__99
    assert_equal %(3 bottles of beer on the wall, 3 bottles of beer.
Take one down, pass it around, 2 bottles of beer on the wall.
2 bottles of beer on the wall, 2 bottles of beer.
Take one down, pass it around, 1 bottles of beer on the wall.
1 bottles of beer on the wall, 1 bottles of beer.
Take one down, pass it around, 0 bottles of beer on the wall.
"Schno m're beers.  Time to 'er nap nescht to ther terlet."
), @hq9f._99(3)
  end
  
  def test_each
    @hq9f.array = [5, 5, 5, 5]
    sum = 0
    @hq9f.each do |num|
      sum += num
    end
    assert_equal 20, sum
  end
end
