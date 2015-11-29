class SomeChangesToProducts < ActiveRecord::Migration
  def change
    change_column :products, :description, :text
    change_column :products, :price, 'decimal USING CAST(price AS decimal)' precision: 6, scale: 2
  end
end
