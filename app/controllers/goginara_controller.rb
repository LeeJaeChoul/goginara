class GoginaraController < ApplicationController
  def index
    # @category = Category.find(1)
    @meat = Meat.all
    @cow = Category.find(1)
    @pork = Category.find(2)
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
