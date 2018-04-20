class CompetitionSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :respected
  has_many :competition_results, serializer: ResultsSerializer

  def competition_results
    object.competition_results.order(place: :asc)
  end
end
