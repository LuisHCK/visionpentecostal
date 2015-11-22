class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :descripcion
      t.datetime :created_at
      t.datetime :updated_at
      t.text :body
      t.integer :admin_id
    end
  end
end
