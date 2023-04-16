require 'pry'
class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.empty?
  end

  def count
    @candies.length
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy)
    if @candies.find { |sweet| sweet.type == candy }.nil?
      false
    else
      true
    end
  end
end