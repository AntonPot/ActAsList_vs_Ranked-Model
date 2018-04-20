class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :owner

  acts_as_list scope: :breed
end
