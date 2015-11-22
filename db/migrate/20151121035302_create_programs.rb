class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :titulo
      t.text :descripcion
      t.text :body
      t.integer :admin_id
    end
  end
end
