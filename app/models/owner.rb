class Owner < ApplicationRecord
  has_many :dogs, -> { order(position: :asc) }
end
