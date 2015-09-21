# Get Repositories From GitHub
# Get repositories from GitHub using user's auth token.
class GetReposFromGitHub
  class << self
    def call(token)
      HTTParty.get(
        'https://api.github.com/user',
        headers: {
          'Authorization' => "token #{token}",
          'User-Agent' => 'githubby'
        }
      )
    end
  end
end
