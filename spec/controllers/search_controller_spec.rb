require 'rails_helper'

RSpec.describe SearchController, type: :controller do
  describe 'GET #index' do
    context 'authenticated' do
      before(:each) do
        @user = FactoryGirl.create(:user)
      end

      let(:valid_session) { { user_id: @user.id } }

      it 'returns http success' do
        get :index, {}, valid_session
        expect(response).to have_http_status(:success)
      end
    end

    context 'not authenticated' do
      let(:invalid_session) { {} }

      it 'returns http redirect' do
        get :index, {}, invalid_session
        # expect(response).to have_http_status(:success)
        expect(response).to redirect_to('/')
      end
    end
  end
end
