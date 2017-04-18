class Product < ApplicationRecord
  has_many :orders
  validates_numericality_of :price
  validates_numericality_of :stock, :only_integer => true, :greater_than_or_equal_to => 0
    #validates :stock, numericality: { only_integer: true }
end
