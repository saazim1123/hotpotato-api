class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :first_choice
      t.string :second_choice
      t.string :third_choice
      t.string :correct_answer
      t.bigint :user_id

      t.timestamps
    end
  end
end
