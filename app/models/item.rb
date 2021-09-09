class Item < ApplicationRecord
  belongs_to :good
  has_many :products, dependent: :destroy
  
  validates :note, length: { maximum: 30 }
  validates :material_name, presence: true
  validates :contact_order, presence: true
  validates :unit_price, presence: true
end
