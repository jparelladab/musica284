class RenamePiecesUsersToRepertoire < ActiveRecord::Migration[5.2]
  def change
    rename_table :pieces_users, :repertoires
  end
end
