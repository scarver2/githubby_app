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
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_reader :id, :name

  def initialize(attributes = {})
    @id = attributes[:id]
    @q = attributes[:q]
  end

  def persisted?
    false
  end
end
