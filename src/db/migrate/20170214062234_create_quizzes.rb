class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.text :title

      t.timestamps
    end
    add_index :quizzes, [:created_at]
  end
end
