# SearchForm
# Search form takes parameters and places a request to GitHub Search API.
# If the request has been previously made, it reads from cache.
class SearchForm # < Reform::Form
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  MAX_PAGES = 3

  attr_reader :filter, :order, :page, :q, :sort

  def initialize(attributes = {})
    @q = attributes[:q]
    @page = attributes[:page].to_i > 1 ? attributes[:page].to_i : 1
    @order = attributes[:order] == 'asc' ? 'asc' : 'desc'
    @sort = attributes[:sort].present? ? attributes[:sort] : 'stars'
  end

  delegate :current_page, to: :page

  def languages
    # %w(C C# C++ CSS HTML Java JavaScript Perl PHP Python Ruby).sort
    parsed_response.collect(&:language).compact.uniq.sort
  end

  def next_page
    return if q.blank?
    return if result.blank?
    return unless @page < MAX_PAGES
    @page + 1
  end

  def previous_page
    return unless q.present?
    return if @page == 1
    @page - 1
  end

  def result
    return [] if q.blank?
    return [] if page > MAX_PAGES
    parsed_response
  end

  def total_count
    response['total_count']
  end

  private

  def response
    @response ||= GetReposFromGitHub.call('d34f3724be40d543aeeec74e9ec1952c583f0d0a', q: q, order: order, sort: sort)
    # TODO: language:assembly&sort=&order=desc
  end

  def parsed_response
    # res['items'].first['stargazers_count']
    # res['items'].first['language']
    # res['items'].first['full_name']
    # res['items'].first['id']
    # res['items'].collect { |e| e['id'] }
    # @parsed_response ||= (1..10).to_a.collect do
    #   SearchResult.new(
    #     id: Random.rand(10_000),
    #     language: languages.sample,
    #     name: Faker::Name.name,
    #     stargazers_count: Random.rand(1_000)
    #   )
    # end
    response['items'].collect { |e| SearchResult.new(SearchResultConverter.from_git_hub(e)) }
  end
end
