class Lodging < ApplicationRecord
  belongs_to :kind, polymorphic: true
end
