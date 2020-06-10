class CreateRecordings < ActiveRecord::Migration[5.2]
  def change
    create_table :recordings do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :url
      t.integer :votes
      t.text :description

      t.timestamps
    end
  end
end
