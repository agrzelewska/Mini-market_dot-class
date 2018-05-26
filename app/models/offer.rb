class Offer < ApplicationRecord

  validates :suggested_price, presence: true
  validates :status, presence: true
  validates :customer_id, presence: true
  validates :product_id, presence: true

  belongs_to :product
  belongs_to :customer


end
