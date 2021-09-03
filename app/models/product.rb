class Product < ApplicationRecord
  belongs_to :item
  
  validates :lot, presence: true
  validates :expire, presence: true
  validates :rog_amount, presence: true
end
