class Dog < ApplicationRecord
  belongs_to :breed
  belongs_to :owner
  
  has_many :competition_results
  has_many :competitions, through: :competition_results
  
  acts_as_list scope: :breed
end
