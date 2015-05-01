class CreateInvitedUsers < ActiveRecord::Migration
  def change
    create_table :invited_users do |t|

      t.timestamps null: false
    end
  end
end
