class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :name
      t.integer :number
      t.string :description

      t.timestamps
    end
  end
end
