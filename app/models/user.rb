class User < ActiveRecord::Base
  attr_accessible :email, :name, :username, :password, :password_confirmation

  has_secure_password

  before_save { |user| user.email = email.downcase }

  validates :username, presence: true, uniqueness: {case_sensitive: true}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
            format:     { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
