# SearchHelper
module SearchHelper
  def search_path_for(search_form, attrs = {})
    # binding.pry
    params = {
      page: attrs[:page] || search_form.page,
      q: attrs[:q] || search_form.q
    }
    search_path(params)
  end
end
