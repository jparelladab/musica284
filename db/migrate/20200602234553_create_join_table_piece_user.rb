class CreateJoinTablePieceUser < ActiveRecord::Migration[5.2]
  def change
    create_table :repertoires do |t|
      t.belongs_to :user
      t.belongs_to :piece
      t.integer :rating
      t.timestamps
    end
  end
end
