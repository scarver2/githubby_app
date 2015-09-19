require 'rails_helper'

RSpec.describe CreateUserFromOauth, type: :model do
  let(:auth) { FactoryGirl.build(:omniauth_github_hash) }

  it 'creates user' do
    expect {
      CreateUserFromOauth.call(auth)
    }.to change{ User.count }.by(1)
    user = User.last
    expect(user.provider).to eq 'github'
    expect(user.uid).to eq '123456'
    expect(user.name).to eq 'Bubba Gump'
  end
end
