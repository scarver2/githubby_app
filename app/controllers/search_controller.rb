# SearchController
# Performs paginated API requests to GitHub's Search API
class SearchController < ApplicationController
  before_action :authenticate_user!
  before_action :init_search_form
  protect_from_forgery except: :index

  def index
    # sleep 2
  end

  private

  def init_search_form
    @search_form = SearchForm.new(params)
  end
end
