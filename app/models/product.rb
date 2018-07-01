class Product < ApplicationRecord

  validates :name, presence: true
  validates :description, presence: true

  belongs_to :merchant
  has_many :offers
end
