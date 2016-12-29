class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  validates_uniqueness_of :number

  accepts_nested_attributes_for :order_items, allow_destroy: true

end
