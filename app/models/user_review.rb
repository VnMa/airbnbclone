class UserReview < ApplicationRecord
  belongs_to :lodging, polymorphic: true
end
