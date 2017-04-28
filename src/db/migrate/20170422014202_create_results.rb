class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :student_id
      t.integer :quiz_id
      t.integer :marks

      t.timestamps
    end
  end
end
