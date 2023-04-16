require_relative 'costume'
require_relative 'bag'
require 'pry'

class TrickOrTreater
  attr_reader :dressed_up_as, :bag

  def initialize(costume_object)
    @dressed_up_as = costume_object.style
    @bag = Bag.new
  end

  def has_candy?
    !@bag.empty?
  end

  def candy_count
    @bag.candies.count
  end

  def eat
    @bag.candies.pop
  end
end