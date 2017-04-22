class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question

      t.timestamps
    end
    add_reference :questions, :quizzes, index: true
  end
end
