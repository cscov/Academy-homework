class User < ApplicationRecord

  validates :username, :session_token, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' },
            length: { minimum: 6, allow_nil: true }
  before_validation :ensure_session_token

  def self.all
    @users
  end

  def self.find_by_credentials(username, password)
    @users.each do |user|
      return user if user.username = username && user.password = password
    end
  end
end
