class CreateBreeds < ActiveRecord::Migration[5.1]
  def change
    create_table :breeds do |t|
      t.string :breed
      t.integer :position

      t.timestamps
    end
  end
end
