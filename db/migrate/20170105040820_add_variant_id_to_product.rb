class AddVariantIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :variant_id, :integer
  end
end
