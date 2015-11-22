class AddCoverToPrograms < ActiveRecord::Migration
  def change
  	  	add_attachment :programs, :cover

  end
end
