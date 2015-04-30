class Membership < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  validates_uniqueness_of :project_id, :message => "can be only joined once", :scope => 'user_id'
end
