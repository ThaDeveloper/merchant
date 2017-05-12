class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user
  #has_many :addresses
  #belongs_to :address
  def total
    total = order_items.inject(0) { |sum, p| sum + p.subtotal }
  end
end
