# Create User From Oauth
# Creates a user model using OAuth parameters.
class CreateUserFromOauth
  class << self
    def call(auth)
      User.create! do |user|
        user.github_token = auth['credentials']['token']
        user.name = auth['info']['name']
        user.provider = auth['provider']
        user.uid = auth['uid']
      end
    end
  end
end
