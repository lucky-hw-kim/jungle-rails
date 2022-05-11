class Product < ApplicationRecord
  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category 
  has_many :line_items, dependent: :destroy

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true
  validates :image, presence: true

  def deduct_inventory(num = 1) 
    self.quantity -= num
    self.save
  end

end
