class Question < ApplicationRecord
	has_many :answers
	belongs_to :quizzes
	accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
