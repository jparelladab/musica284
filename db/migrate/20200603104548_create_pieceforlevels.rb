class CreatePieceforlevels < ActiveRecord::Migration[5.2]
  def change
    create_table :pieceforlevels do |t|

      t.timestamps
    end
  end
end
