class CreateClothingItems < ActiveRecord::Migration
  def change
    create_table :clothing_items do |t|
      t.string :image
      t.datetime :last_worn
      t.references :user, index: true, foreign_key: true
      t.string :color
      t.string :category
      t.string :type

      t.timestamps null: false
    end
  end
end
