class AddNotesToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :notes, index: true
    add_foreign_key :projects, :notes
  end
end
