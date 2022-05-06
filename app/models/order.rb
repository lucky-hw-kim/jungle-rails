class Order < ApplicationRecord

  has_many :line_items, dependent: :destroy

  monetize :total_cents, numericality: true

  validates :stripe_charge_id, presence: true


end
