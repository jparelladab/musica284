class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.references :user, foreign_key: true
      t.string :url
      t.integer :votes
      t.references :composer, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
