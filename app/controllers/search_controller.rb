# SearchController
# Performs paginated API requests to GitHub's Search API
class SearchController < ApplicationController
  def index
  end

  private

  def init_search_form
    @search_form = SearchForm.new
  end
end
