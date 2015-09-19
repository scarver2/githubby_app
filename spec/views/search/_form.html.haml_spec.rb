require 'rails_helper'

# https://www.relishapp.com/rspec/rspec-rails/v/3-0/docs/view-specs/view-spec#passing-spec-with-rendering-of-locals-in-a-partial
# TODO:
RSpec.describe 'search/_form.html.haml', type: :view do
  it 'displays search form' do
    search_form = SearchForm.new
    render partial: 'search/form.html.haml', locals: { search_form: search_form }
    # expect(rendered).to_not match /translation/
  end
end
