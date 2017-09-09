class CreateLodgings < ActiveRecord::Migration[5.0]
  def change
    create_table :lodgings do |t|
      t.text :description
      t.integer :price
      t.string :cover_image
      t.references :kind, polymorphic: true

      t.timestamps
    end
  end
end
