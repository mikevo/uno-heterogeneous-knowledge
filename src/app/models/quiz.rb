class Quiz < ApplicationRecord
  validates :title, presence: true
  has_many :questions
	has_many :answers
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  belongs_to :course
end
