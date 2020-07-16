class CreateCommentsOnPieces < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_pieces do |t|
      t.belongs_to :student
      t.belongs_to :piece
      t.text :comment

      t.timestamps
    end
  end
end
