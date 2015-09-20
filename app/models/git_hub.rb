# GitHub
# Party down with Github
class GitHub
  include HTTParty
  base_uri 'https://api.github.com'

  # '/?q=tetris+language:assembly&sort=stars&order=desc'
  # def initialize(service, page)
  #   @options = { query: {site: service, page: page} }
  # end

  # 'https://api.github.com/search/repositories?q=tetris+language:assembly&sort=stars&order=desc'
  def repositories(q, options = {})
    options.merge!(q: q)
    binding.pry
    self.class.get('/search/repositories', options)
  end
end
