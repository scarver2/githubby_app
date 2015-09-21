# Find User by Oauth
# Finds a user model using OAuth parameters.
class FindUserByOauth
  class << self
    def call(auth)
      User.find_by(provider: auth['provider'], uid: auth['uid'])
    end
  end
end
