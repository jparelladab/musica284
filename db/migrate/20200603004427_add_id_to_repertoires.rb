class AddIdToRepertoires < ActiveRecord::Migration[5.2]
  def change
    add_column :repertoires, :id, :primary_key
  end
end
