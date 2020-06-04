class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.belongs_to :level, optional: true
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
