require 'rails_helper'

RSpec.describe CreateUserFromOauth, type: :model do
  let(:auth) {
    Hash.new(
      'provider' => 'github',
      'uid' => '1234',
      'info' => {
        'name' => 'Bubba Gump'
      }
    )
  }
  
  it 'creates user' do
    # expect to increase users by one
    CreateUserFromOauth.call(auth)
    expect(User.count).to eq 1
    # user.provider = auth['']
    # user.uid = auth['uid']
    # user.name = auth['info']['name']
  end
end
