class CreateDogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :position
      t.references :breed
      t.references :owner

      t.timestamps
    end
  end
end
