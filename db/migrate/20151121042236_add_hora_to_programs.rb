class AddHoraToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :dias, :string
    add_column :programs, :hora, :string
  end
end
