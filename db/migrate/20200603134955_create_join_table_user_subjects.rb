class CreateJoinTableUserSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :workloads do |t|
      t.belongs_to :user
      t.belongs_to :subject
      t.integer :rating
      t.timestamps
    end
  end
end
