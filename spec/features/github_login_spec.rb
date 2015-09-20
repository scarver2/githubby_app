require 'rails_helper'

feature 'Login via GitHub' do
  let(:user) { FactoryGirl.create(:user) }

  background do
    visit root_path
  end

  scenario 'click login' do
    click_link 'login'
    expect(page).to have_content('Bubba Gump')
  end
end
