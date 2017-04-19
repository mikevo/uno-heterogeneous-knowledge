class Quiz < ApplicationRecord
  validates :title, presence: true
  has_many :questions
  accepts_nested_attributes_for :questions, allow_destroy: true

  belongs_to :course
end
