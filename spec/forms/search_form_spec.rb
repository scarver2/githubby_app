require 'rails_helper'

RSpec.describe SearchForm, type: :model do
  describe 'attributes' do
    it { should respond_to :language }
    it { should respond_to :order }
    it { should respond_to :page }
    it { should respond_to :q }
    it { should respond_to :sort }
    it { should respond_to :token }
  end
  
  describe 'methods' do
    before(:each) do
      GetReposFromGitHub.stub(:call).and_return({'total_count' => 1, 'items' => [{'id' => 1, 'full_name' => 'My/Repo', 'language' => 'Ruby', 'stargazers_count' => 1}]})
    end

    it 'extracts languages from response' do
      expect(subject.languages).to eq(['Ruby'])
    end

    it 'preps query when language is filtered' do
      subject = SearchForm.new(language: 'Ruby', q: 'repo')
      expect(subject.result.first.id).to eq(1)
      expect(subject.result.first.language).to eq('Ruby')
      expect(subject.result.first.name).to eq('My/Repo')
      expect(subject.result.first.stargazers_count).to eq(1)
    end

    it 'extracts result from response' do
      expect(subject.result).to eq([])
    end

    it 'extracts total_count from response' do
      expect(subject.total_count).to eq(1)
    end
  end
end
