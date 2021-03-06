# User
class User < ActiveRecord::Base
  validates :provider, presence: true
  validates :uid, presence: true, uniqueness: { scope: :provider }
end
