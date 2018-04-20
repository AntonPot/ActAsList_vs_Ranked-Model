class CompetitionResult < ApplicationRecord
  include RankedModel
  
  belongs_to :dog
  belongs_to :competition

  ranks :place
end
