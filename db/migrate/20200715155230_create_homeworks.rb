class CreateHomeworks < ActiveRecord::Migration[5.2]
  def change
    create_table :homeworks do |t|
      t.references :subject, foreign_key: true
      t.text :description
      t.date :deadline

      t.timestamps
    end
  end
end
