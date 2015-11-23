class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :description
	  t.attachment :image
      t.integer :gallery_id
      t.string :token
      t.timestamps
    end
  end
end
