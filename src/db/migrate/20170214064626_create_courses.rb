class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.text :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
