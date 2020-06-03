class CreateJoinTablePieceUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :pieces, :users do |t|
      t.index [:piece_id, :user_id]
      t.index [:user_id, :piece_id]
    end
  end
end
