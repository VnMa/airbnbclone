class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :gender, limit: 1
      t.string :profile_image

      t.timestamps
    end
  end
end
