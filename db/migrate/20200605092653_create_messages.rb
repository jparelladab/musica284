class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer 'sender_id'
      t.integer 'receiver_id'
      t.text :text

      t.timestamps
    end
    add_index :messages, :sender_id
    add_index :messages, :receiver_id
    add_index :messages, [:sender_id, :receiver_id], unique: true
  end
end
