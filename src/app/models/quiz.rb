class Quiz < ApplicationRecord
  validates :title, presence: true

  belongs_to :course
end
