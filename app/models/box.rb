class Box < ActiveRecord::Base
  # has_one :product
  belongs_to :user
  belongs_to :order

  # user, product, number
  # (유저, 상품, 개수)를 받아서 새로운 박스를 생서하는 함수
  def new(u, p, n)
    return false if u.nil? || p.nil?
    Box.create(
      user_id: u.id,
      product_id: p.id,
      number: n
      )
  end

  # 박스 내의 상품 정보를 받아오는 함수
  # b.product
  def product
    p = Product.where(id: self.product_id).first
    return false if p.nil?
    p
  end
end
