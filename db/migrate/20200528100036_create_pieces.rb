class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.references :composer, foreign_key: true
      t.references :level, foreign_key: true
      t.string :description
      t.integer :rating
      t.boolean :pipeline, default: false
      t.boolean :favorite, default: false
      t.string :url

      t.timestamps
    end
  end
end
