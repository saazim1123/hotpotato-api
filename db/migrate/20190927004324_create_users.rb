class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :streak
      t.integer :highest_streak
      t.integer :last_question_answered_id

      t.timestamps
    end
  end
end
