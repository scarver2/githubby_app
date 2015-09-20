# SearchForm
# Search form takes parameters and places a request to GitHub Search API.
# If the request has been previously made, it reads from cache.
class SearchForm # < Reform::Form
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  MAX_PAGES = 3

  attr_reader :q, :page

  def initialize(attributes = {})
    @q = attributes[:q]
    @page = attributes[:page].to_i > 1 ? attributes[:page].to_i : 1
  end

  delegate :current_page, to: :page

  def previous_page
    return unless q.present?
    return if @page == 1
    @page - 1
  end

  def next_page
    return unless q.present?
    return unless result.present?
    return unless @page < MAX_PAGES
    @page + 1
  end

  def result
    # binding.pry
    return [] unless q.present?
    return [] if page > MAX_PAGES 
    @result ||= (1..10).to_a.collect { SearchResult.new(id: Random.rand(10_000), name: Faker::Name.name) }
  end
end
