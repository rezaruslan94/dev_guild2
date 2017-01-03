class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items
  validates_uniqueness_of :number

  accepts_nested_attributes_for :order_items, allow_destroy: true

  def calculate_total_price
    sum = 0
    self.order_items.each do |order_item|
      sum = sum + (order_item.qty * order_item.product.price)
    end
    self.update(total_price: sum)
  end

end
