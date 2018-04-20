class Competition < ApplicationRecord
  has_many :competition_results
  has_many :dogs, through: :competition_results
end
