class Category < ActiveRecord::Base
  resourcify
  include Authority::Abilities
  # belongs_to :user
  has_many :meats, dependent: :nullify
end
