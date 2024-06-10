class DiscountCampaign < ApplicationRecord
  belongs_to :product

  validates :original_price, numericality: { greater_than_or_equal_to: 0 }
  validates :discounted_price, numericality: { greater_than_or_equal_to: 0 }
  validates :status, inclusion: { in: ['active', 'expired'] }
end
