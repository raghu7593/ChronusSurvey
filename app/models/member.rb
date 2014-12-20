class Member < ActiveRecord::Base
  attr_accessible :access_token, :expires, :name, :provider, :refresh_token, :uid
end
