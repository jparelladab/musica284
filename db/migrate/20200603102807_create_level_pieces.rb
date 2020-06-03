class CreateLevelPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :level_pieces do |t|

      t.timestamps
    end
  end
end
