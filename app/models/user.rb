class User < ActiveRecord::Base
  rolify
  include Authority::UserAbilities
  # has_many :categories, dependent: :nullify
  # has_many :meats, dependent: :destroy
  has_many :boxes, dependent: :destroy
  has_many :orders #, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #       :confirmable

  # def confirm
  #   super
  #   add_role :user
  # end

  # 새로운 주문 생성 ( box의 배열 )
  def order(boxes)
    return false if boxes.nil? || boxes.empty?
    o = Order.new
    o.user_id = self.id
    o.save
    boxes.each do |b|
      b.order_id = o.id
      b.save
    end
    o
  end
end
