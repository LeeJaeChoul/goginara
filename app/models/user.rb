class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  has_many :categories, dependent: :nullify
  has_many :meats, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #       :confirmable
    
  # def confirm
  #   super
  #   add_role :user
  # end
  
end
