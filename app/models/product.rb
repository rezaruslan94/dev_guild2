class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :tags
  has_many :variants
end
