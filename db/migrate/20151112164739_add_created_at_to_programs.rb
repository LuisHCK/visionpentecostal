class AddCreatedAtToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :created_at, :datetime
  end
end
