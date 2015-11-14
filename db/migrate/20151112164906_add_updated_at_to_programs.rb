class AddUpdatedAtToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :updated_at, :datetime
  end
end
