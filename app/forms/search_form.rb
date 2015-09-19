# SearchForm
# Search form takes parameters and places a request to GitHub Search API.
# If the request has been previously made, it reads from cache.
class SearchForm < Reform::Form
  property :q
  validates :q, presence: true

  def results
    return [] unless q.present?
    # TODO: implement cache logic
    (1..10).to_a.collect { OpenStruct.new(id: Random.rand(10_000), name: Faker::Name.name) }
  end
end
