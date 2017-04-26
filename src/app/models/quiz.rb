class Quiz < ApplicationRecord
  validates :title, presence: true
  has_many :questions
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  belongs_to :course
end
