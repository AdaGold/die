# die_test.rb

require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'die'

class TestDie < MiniTest::Unit::TestCase
  def test_creation_of_die
    @die = Die.new
    assert( @die.class == Die, "There must be a die class")
  end

end
