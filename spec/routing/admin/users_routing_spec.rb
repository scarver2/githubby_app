require 'rails_helper'

describe Admin::UsersController do
  describe 'routing' do
    it 'routes to #create' do
      expect(post: '/admin/users').to_not be_routable
    end

    it 'routes to #destroy' do
      expect(delete: '/admin/users/1').to route_to('admin/users#destroy', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/admin/users/1/edit').to_not be_routable
    end

    it 'routes to #index' do
      expect(get: '/admin/users').to route_to('admin/users#index')
    end

    it 'routes to #new' do
      expect(get: '/admin/users/new').to route_to('admin/users#show', id: 'new')
    end

    it 'routes to #show' do
      expect(get: '/admin/users/1').to route_to('admin/users#show', id: '1')
    end

    it 'routes to #update' do
      expect(put: '/admin/users/1').to_not be_routable
    end
  end
end
