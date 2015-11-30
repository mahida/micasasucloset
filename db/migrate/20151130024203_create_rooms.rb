class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.string :room_env
      t.string :room_size
      t.string :accessibility
      t.string :listing_name
      t.text :summary
      t.string :address
      t.boolean :is_shared
      t.boolean :active
      t.integer :price
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
