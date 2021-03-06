class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :item_id, :null => false
      t.integer :librarian_id
      t.integer :basket_id
      t.timestamps
    end
    add_index :checkins, :item_id
    add_index :checkins, :librarian_id
    add_index :checkins, :basket_id
  end
end
