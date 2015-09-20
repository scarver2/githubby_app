require 'rails_helper'
include Devise::TestHelpers

describe Admin::DashboardController do
  render_views

  before(:each) do
    @user = FactoryGirl.create(:user)
    @admin_user = FactoryGirl.create(:admin_user)
    sign_in @admin_user
  end

  describe 'Get dashboard' do
    it 'dashboard' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
