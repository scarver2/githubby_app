require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  it 'does not have missing translations' do
    render
    expect(rendered).to_not match /translation/
  end
end
