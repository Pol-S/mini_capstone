class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  belongs_to :supplier
  has_many :orders, through: carted_products
  has_many :images
  has_many :category_products
  # has_many :categeries, though: carted_products
  has_many :carted_products

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
