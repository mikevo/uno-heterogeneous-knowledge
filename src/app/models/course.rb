class Course < ApplicationRecord
  belongs_to :teacher, class_name: "User"
  has_and_belongs_to_many :students, join_table: :courses_students, class_name: "User"
  accepts_nested_attributes_for :students
	has_many :quizzes, :dependent => :destroy
end
