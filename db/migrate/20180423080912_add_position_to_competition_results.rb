class AddPositionToCompetitionResults < ActiveRecord::Migration[5.1]
  def change
    add_column :competition_results, :position, :integer
    CompetitionResult.order(place: :asc).each.with_index(1) do |competition_result, index|
      competition_result.update_column :position, index
    end
  end
end
