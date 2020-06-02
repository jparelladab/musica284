class CreateRepertoires < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|
      t.references :user_id, foreign_key: true
      t.references :piece_id, foreign_key: true

      t.timestamps
    end
  end
end
