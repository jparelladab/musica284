class AddJoinTablePiecesLevels < ActiveRecord::Migration[5.2]
  def change
    create_join_table :levels, :pieces, id: :true do |t|
      t.index [:level_id, :piece_id]
      t.index [:piece_id, :level_id]
    end
  end
end
