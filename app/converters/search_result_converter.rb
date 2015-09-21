# SearchResultConverter
class SearchResultConverter
  class << self
    # converts GitHub Search HTTParty hash to attributes hash for SearchResult
    def from_git_hub(hash)
      {
        id: hash['id'],
        language: hash['language'],
        name: hash['full_name'],
        stargazers_count: hash['stargazers_count']
      }.with_indifferent_access
    end
  end
end
