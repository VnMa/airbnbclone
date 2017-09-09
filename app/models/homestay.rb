class Homestay < ApplicationRecord
  belongs_to :user

  after_create :create_lodging

  def create_lodging
    Lodging.create({description: self.description, price: self.price, cover_image: self.cover_image, kind_id: self.id,
                    kind_type: self.class.name})
  end
end
