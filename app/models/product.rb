class Product < ApplicationRecord
    validates :name, presence: true
    #validates :price_cents, numericality: true, presence: true
    validates :amount, numericality: { only_integer: true, :greater_than => 0 }, presence:true
    validates :short_description, length: { maximum: 15}, presence: true
    validates :full_description, length: { maximum: 500 }

    monetize :price_cents
end
