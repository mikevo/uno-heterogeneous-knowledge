class Quiz < ApplicationRecord
  validates :title, presence: true
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
  belongs_to :course
end
