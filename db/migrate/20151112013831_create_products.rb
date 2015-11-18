class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :descriptioin
      t.string :size
      t.string :color

      t.timestamps null: false
    end
  end
end
