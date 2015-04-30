class AddNoteToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :note, index: true
    add_foreign_key :projects, :notes
  end
end
