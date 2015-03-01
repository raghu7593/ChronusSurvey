class Survey < ActiveRecord::Base
  attr_accessible :description, :public, :title, :uid, :login_required, :end_date
  extend FriendlyId
  friendly_id :uid
  has_many :sections, :dependent => :destroy
end