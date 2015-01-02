class Survey < ActiveRecord::Base
  attr_accessible :description, :public, :title, :uid
  extend FriendlyId
  friendly_id :uid
end
