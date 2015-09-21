# SearchForm
# Search form takes parameters and places a request to GitHub Search API.
# If the request has been previously made, it reads from cache.
class SearchForm # < Reform::Form
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  MAX_PAGES = 3

  attr_reader :language, :order, :page, :q, :sort, :token

  def initialize(attributes = {})
    @order = attributes[:order] == 'asc' ? 'asc' : 'desc'
    @page = attributes[:page].to_i > 1 ? attributes[:page].to_i : 1
    @q = attributes[:q]
    @sort = attributes[:sort].present? ? attributes[:sort] : 'stars'
    @token = attributes[:token]
  end

  delegate :current_page, to: :page

  def languages
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

  def parsed_response
    return [] unless response.present?
    response['items'].collect { |e| SearchResult.new(SearchResultConverter.from_git_hub(e)) }
  end

  def response
    @response ||= GetReposFromGitHub.call(token, language: language, q: q, order: order, sort: sort)
  end
end
