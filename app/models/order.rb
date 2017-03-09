class Order < ActiveRecord::Base
  # 한 건의 주문 내용을 담을 모델
  belongs_to :user
  has_many :boxes, dependent: :destroy

  # status
  # 상태 / 주문대기, 결제대기(주문완료, 입금확인중), 결제완료, 배송준비중, 배송완료, 구매결정(종료)
  # waiting
  # 


end
