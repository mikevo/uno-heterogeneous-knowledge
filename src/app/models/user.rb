class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: :new_user?

  validates :password, confirmation: true
  validates :email, uniqueness: true
  validates :email, uniqueness: true, email_format: { message: 'has invalid format' }

  enum role: {
    student: 0,
    teacher: 1,
    admin: 2
  }

  def change_password!(new_password)
    self.send(:"#{sorcery_config.password_attribute_name}=", new_password)
    sorcery_adapter.save
  end

  def role?(role_name)
    role == role_name
  end

  private
  def new_user?
    new_record?
  end
end
