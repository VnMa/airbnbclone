class Photo < ApplicationRecord
  belongs_to :lodging, polymorphic: true
end
