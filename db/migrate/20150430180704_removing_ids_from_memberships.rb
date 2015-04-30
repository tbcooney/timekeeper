class RemovingIdsFromMemberships < ActiveRecord::Migration
  def change
  	remove_column :memberships, :user_id
  	remove_column :memberships, :project_id
  end
end
