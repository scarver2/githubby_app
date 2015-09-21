require 'rails_helper'

describe SearchHelper do
  before(:each) do
    GetReposFromGitHub.stub(:call).and_return({'total_count' => 1, 'items' => [{'id' => 1, 'full_name' => 'My/Repo', 'language' => 'Ruby'}]})
  end

  let(:search_form) { SearchForm.new(q: 'shrimp', page: 2) }

  it 'creates search path with query options' do
    expect(helper.search_path_for(search_form, page: search_form.previous_page)).to eq '/search?order=desc&page=1&q=shrimp&sort=stars'
    expect(helper.search_path_for(search_form)).to eq '/search?order=desc&page=2&q=shrimp&sort=stars'
    expect(helper.search_path_for(search_form, page: search_form.next_page)).to eq '/search?order=desc&page=3&q=shrimp&sort=stars'
  end
end
