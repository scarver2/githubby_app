require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'attributes' do
    it { should respond_to :created_at }
    it { should respond_to :github_token }
    it { should respond_to :name }
    it { should respond_to :provider }
    it { should respond_to :uid }
    it { should respond_to :updated_at }
  end
end
