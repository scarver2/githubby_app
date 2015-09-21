# SearchHelper
module SearchHelper
  def search_path_for(search_form, attrs = {})
    # binding.pry
    params = {
      language: attrs[:language] || search_form.language,
      order: attrs[:order] || search_form.order,
      page: attrs[:page] || search_form.page,
      q: attrs[:q] || search_form.q,
      sort: attrs[:sort] || search_form.sort
    }
    search_path(params)
  end
end
