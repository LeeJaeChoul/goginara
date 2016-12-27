class Order < ActiveRecord::Base
  # 한 건의 주문 내용을 담을 모델
  belongs_to :user
  has_many :boxes, dependent: :destroy
end
