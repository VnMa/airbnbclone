class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :url
      t.references :lodging, polymorphic: true

      t.timestamps
    end
  end
end
