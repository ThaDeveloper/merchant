class Address < ApplicationRecord
  belongs_to :user
  #has_many :orders
  #belongs_to :order
  validates_presence_of :line1, :city, :state, :zip
	validates_numericality_of :zip
	validates :line1, length: { minimum: 5 }
	validates :state, length: { is: 2 }

	def to_s
		[line1, line2, city, state].compact.join(', ')
  end
end
