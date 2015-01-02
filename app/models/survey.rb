class Survey < ActiveRecord::Base
  attr_accessible :description, :public, :title, :uid
end
