class ProductTag < ActiveRecord::Migration[5.0]
  def change
    create_table :products_tags, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :tag, index: true
    end
  end
end