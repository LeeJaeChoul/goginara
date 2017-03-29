class GoginaraController < ApplicationController
  def index
    # @category = Category.find(1)
    # @cow = []
    # @pork = []
    @meat = Meat.all
    @cow = Category.where(name: "Cow").first
    @pork = Category.where(name: "Pork").first
    # $array = Array.new(45)
    # $array = (1..45).to_a
    # @lotto = $array.sample(6).sort

  end

  def contact

  end

  def buy
    @meat = Meat.all
  end
end
