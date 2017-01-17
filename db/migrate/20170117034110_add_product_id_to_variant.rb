class AddProductIdToVariant < ActiveRecord::Migration[5.0]
  def change
    add_column :variants, :product_id, :integer
  end
end
