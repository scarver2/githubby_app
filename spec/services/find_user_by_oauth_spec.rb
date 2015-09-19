require 'rails_helper'

RSpec.describe FindUserByOauth, type: :model do
  let(:auth) { FactoryGirl.build(:omniauth_github_hash) }

  it 'finds user' do
    # binding.pry
    CreateUserFromOauth.call(auth)
    user = FindUserByOauth.call(auth)
    expect(user.name).to eq 'Bubba Gump'
    expect(user.provider).to eq 'github'
    expect(user.uid).to eq '123456'
  end

  it 'does not find user' do
    user = FindUserByOauth.call(auth)
    expect(user).to be_nil
  end
end
