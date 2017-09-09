class CreateUserReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :user_reviews do |t|
      t.integer :user_id
      t.references :lodging, polymorphic: true
      t.text :comment
      t.integer :rating

      t.timestamps
    end
  end
end
