class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :permission_level, :string
  end
end
