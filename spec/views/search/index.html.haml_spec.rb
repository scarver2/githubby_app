require 'rails_helper'

RSpec.describe 'search/index.html.haml', type: :view do
  xit 'does not have missing translations' do
    assign(:search_form, SearchForm.new)
    render
    expect(rendered).to_not match /translation/
  end
end
