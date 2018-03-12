require 'rails_helper'

RSpec.describe User, type: :model do
  # validations
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

  it 'creates a password_digest when a password is given' do
    expect(user.password_digest).to_not_be_nil
  end

  it 'creates a session token before validation' do
    user.valid?
    expect(user.session_token).to_not_be_nil
  end

  describe '#reset_session_token!' do
    it 'sets a new session token on the user' do
      old_session_token = user.session_token
      user.reset_session_token!
      expect(old_session_token).to not_eq(user.session_token)
    end
  end

end
