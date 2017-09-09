class CreateHomestays < ActiveRecord::Migration[5.0]
  def change
    create_table :homestays do |t|
      t.string :cover_image
      t.string :title
      t.references :user, foreign_key: true
      t.string :room_type
      t.integer :guest_no
      t.boolean :bed_room
      t.text :description
      t.text :amenities
      t.integer :price
      t.integer :weekly_discount
      t.integer :monthly_discount
      t.string :house_rules
      t.string :location

      t.timestamps
    end
  end
end
