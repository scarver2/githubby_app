# Get Repositories From GitHub
# Get repositories from GitHub using user's auth token.
# Accepts optional parameters
class GetReposFromGitHub
  class << self
    def call(token, options = {})
      headers = {
        headers: {
          'Authorization' => "token #{token}",
          'User-Agent' => 'githubby'
        }
      }
      url = 'https://api.github.com/search/repositories?'.concat(options.to_query)
      APICache.get("#{token}/#{url}", fail: []) do
        HTTParty.get(url, headers)
      end
    end
  end
end
