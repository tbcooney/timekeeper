class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notes
  has_many :projects, :through => :memberships, :foreign_key => "project_id"
  has_many :memberships, :dependent => :destroy
end
