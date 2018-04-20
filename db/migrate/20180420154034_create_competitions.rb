class CreateCompetitions < ActiveRecord::Migration[5.1]
  def change
    create_table :competitions do |t|
      t.string :name
      t.string :location
      t.boolean :respected

      t.timestamps
    end

    create_table :competition_results do |t|
      t.integer :place
      t.references :dog
      t.references :competition

      t.timestamps
    end
  end
end
