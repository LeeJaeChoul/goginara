class GoginaraController < ApplicationController
  def index
    @cow = Cow.all
    @pork = Pork.all
    # $array = Array.new(45)
    # $array = (1..45).to_a
    # @lotto = $array.sample(6).sort
    
  end
  
  def contact
    
  end
end
