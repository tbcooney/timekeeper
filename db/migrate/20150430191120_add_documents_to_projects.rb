class AddDocumentsToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :documents, index: true
    add_foreign_key :projects, :documents
  end
end
