# SearchForm
# Search form takes parameters and places a request to GitHub Search API.
# If the request has been previously made, it reads from cache.
class SearchForm # < Reform::Form
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  # property :q
  # validates :q, presence: true

  # attr_accessor :q
  attr_reader :q

  # def initialize(args = {})
  #   self.q = args[:q]
  # end

  def initialize(attributes = {})
    # self.q = attributes[:q]
    # send('q=')
    @q = attributes[:q]
    # attributes.each do |name, value|
    #   send("#{name}=", value)
    # end
  end

  def result
    # return [] # unless q.present?
    # TODO: implement cache logic
    # (1..10).to_a.collect { OpenStruct.new(id: Random.rand(10_000), name: Faker::Name.name) }
    (1..10).to_a.collect { SearchResult.new(id: Random.rand(10_000), name: Faker::Name.name) }
  end
end
