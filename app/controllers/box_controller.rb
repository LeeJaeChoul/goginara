class BoxController < ApplicationController
  # before_action :is_signed?

  def index
    # @boxes = User.boxes
    @boxes = Box.all
  end

  def new

  end
  
end
