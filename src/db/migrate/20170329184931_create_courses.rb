class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :teacher_id
      t.timestamps
    end

    add_reference :quizzes, :course, index: true

    create_table :courses_students, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :course, index: true
    end
  end
end
