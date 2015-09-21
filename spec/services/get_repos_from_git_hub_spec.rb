require 'rails_helper'

RSpec.describe GetReposFromGitHub, type: :model do
  describe 'API call' do
    before(:each) do
      HTTParty.should_receive(:get).and_return([])
    end

    it 'asdf' do
      expect(GetReposFromGitHub.call('token')).to eq([])
    end
  end
end
