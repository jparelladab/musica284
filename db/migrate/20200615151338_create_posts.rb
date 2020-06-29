class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references :user, foreign_key: true
      t.text :text
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
