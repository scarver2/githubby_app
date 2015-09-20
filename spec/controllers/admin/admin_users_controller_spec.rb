require 'rails_helper'
include Devise::TestHelpers

describe Admin::AdminUsersController do
  render_views

  before(:each) do
    @admin_user = FactoryGirl.create(:admin_user)
    sign_in @admin_user
  end

  it 'edit' do
    get :edit, id: @admin_user.id
    expect(assigns(:admin_user)).to eq(@admin_user)
  end

  it 'index' do
    get :index
    expect(assigns(:admin_users)).to eq([@admin_user])
  end

  it 'show' do
    get :show, id: @admin_user.id
    expect(assigns(:admin_user)).to eq(@admin_user)
  end
end
