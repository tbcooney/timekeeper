class Project < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :users, through: :memberships, :foreign_key => "user_id"
  has_many :invited_users, through: :memberships, :foreign_key => "user_id"
  has_many :notes
  has_many :documents
end
