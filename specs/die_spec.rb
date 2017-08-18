# die_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'

require_relative '../lib/die'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Testing the Die class" do
  before do
    @die = Die.new
    @die_20 = Die.new(20)
  end

  it "You can create an instance of Die" do
    @die.class.must_equal Die
  end

  it "Can take an argument to initialize" do
    @die_20.class.must_equal Die
  end
  it "Can't take 0 as an argument to initialize" do

    proc { Die.new(0)  }.must_raise ArgumentError

  end


  it "You can roll the die" do
    @die.must_respond_to :roll
  end
  it "You can see the number a die is showing" do
    @die.must_respond_to :showing
  end

  it "Showing must give you a number" do
    @die.showing.must_be_instance_of Integer
    @die.showing.must_be :>, 0
    @die.showing.must_be :<, 7
  end

  it "Allows a multi-sided die to show appropriate numbers" do
    20.times do
      @die_20.roll
      @die_20.showing.must_be :>, 0
      @die_20.showing.must_be :<, 21
    end
  end
end








##
