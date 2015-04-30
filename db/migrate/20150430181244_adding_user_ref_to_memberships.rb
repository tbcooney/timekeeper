class AddingUserRefToMemberships < ActiveRecord::Migration
  def change
  	add_column :memberships, :user_id, :integer
    add_index :memberships, :user_id
    add_column :memberships, :project_id, :integer
    add_index :memberships, :project_id
  end
end
