class Discount < ApplicationRecord
  belongs_to :product

  validates :discount_type, inclusion: { in: ['percentage', 'amount'] }
  validates :discount_amount, numericality: { greater_than_or_equal_to: 0 }
end
