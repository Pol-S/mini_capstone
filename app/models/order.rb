class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :carted_products
  belongs_to :user, through: :carted_product
end
