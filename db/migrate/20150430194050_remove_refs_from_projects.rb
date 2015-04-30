class RemoveRefsFromProjects < ActiveRecord::Migration
  def change
  	remove_column :projects, :documents_id
  	remove_column :projects, :notes_id
  end
end
