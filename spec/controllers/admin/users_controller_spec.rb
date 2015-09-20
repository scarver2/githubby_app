require 'rails_helper'
include Devise::TestHelpers

describe Admin::UsersController do
  render_views

  before(:each) do
    @user = FactoryGirl.create(:user)
    @admin_user = FactoryGirl.create(:admin_user)
    sign_in @admin_user
  end

  it 'destroy' do
    delete :destroy, id: @user.id
    expect(assigns(:user)).to eq(@user)
  end

  it 'index' do
    get :index
    expect(assigns(:users)).to eq([@user])
  end

  it 'show' do
    get :show, id: @user.id
    expect(assigns(:user)).to eq(@user)
  end
end
