class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :email, uniqueness: true
  validates :email, uniqueness: true, email_format: { message: 'has invalid format' }

  def teacher?
    self.role == 'teacher'
  end 
end
