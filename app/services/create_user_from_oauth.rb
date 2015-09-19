# Create User From Oauth
# creates a user model using OAuth parameters
class CreateUserFromOauth
  class << self
    def call(auth)
      User.create! do |user|
        user.provider = auth['provider']
        user.uid = auth['uid']
        user.name = auth['info']['name']
      end
    end
  end
end
