# class SearchResult
#   include Virtus
#
#   extend ActiveModel::Naming
#   include ActiveModel::Conversion
#
#   attr_accessor :name, :zip_code
#
#   def persisted?
#     false
#   end
# end
class SearchResult
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  # include ActiveModel::Validations

  attr_reader :id, :language, :name, :stargazers_count

  def initialize(attributes = {})
    @id = attributes[:id]
    @language = attributes[:language]
    @name = attributes[:name]
    @stargazers_count = attributes[:stargazers_count]
  end

  # def persisted?
  #   false
  # end
end
