class AddIndexToFollows < ActiveRecord::Migration[5.2]
  def change
      add_index :follows, :followed_user_id
      add_index :follows, :follower_id
      add_index :follows, [:followed_user_id, :follower_id], unique: true
  end
end
