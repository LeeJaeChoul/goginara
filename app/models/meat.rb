class Meat < ActiveRecord::Base
  resourcify
  include Authority::Abilities
  belongs_to :category
  has_many :products, dependent: :destroy #:nullify
  # belongs_to :user
end
