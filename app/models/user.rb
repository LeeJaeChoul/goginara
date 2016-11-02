class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  has_many :posts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  after_create :set_default_role

  private

  def set_default_role
    add_role :user
  end

end
