class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :option
      t.string :is_correct

      t.timestamps
    end
    add_reference :answers, :questions, index: true
  end
end
