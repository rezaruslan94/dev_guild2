class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  validates_uniqueness_of :number
end