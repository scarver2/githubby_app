require 'rails_helper'

describe SearchHelper do
  let(:search_form) { SearchForm.new(q: 'shrimp', page: 2) }

  it 'creates search path with query options' do
    expect(helper.search_path_for(search_form, page: search_form.previous_page)).to eq '/search?page=1&q=shrimp'
    expect(helper.search_path_for(search_form)).to eq '/search?page=2&q=shrimp'
    expect(helper.search_path_for(search_form, page: search_form.next_page)).to eq '/search?page=3&q=shrimp'
  end
end
