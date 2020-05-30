class AddMoreFieldstoUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :biography, :string
    add_column :users, :favorite_composer, :string
    add_column :users, :instrument, :string
    add_column :users, :address, :string
    add_column :users, :occupation, :string
  end
end
