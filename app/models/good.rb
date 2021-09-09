class Good < ApplicationRecord
  has_many :item
  has_many :goods_material
  
  validates :client_name, presence: true
  validates :goods_name, presence: true
  validates :quantity, presence: true
end
