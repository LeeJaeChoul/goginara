class Box < ActiveRecord::Base
  has_one :product
  belongs_to :user
  belongs_to :order
  
end
