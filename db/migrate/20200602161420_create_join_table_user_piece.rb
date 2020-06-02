class CreateJoinTableUserPiece < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :pieces do |t|
      t.index [:user_id, :piece_id]
      t.index [:piece_id, :user_id]
    end
  end
end
