require 'rails_helper'

describe User do
  before do
    @user = create(:user)
  end

  it 'has a valid factory' do
    expect(@user).to be_valid
  end

  it 'is invalid without a name' do
    @user.name = ''
    expect(@user).to_not be_valid
  end

  it 'is invalid without an email' do
    @user.email = ''
    expect(@user).to_not be_valid
  end
end
