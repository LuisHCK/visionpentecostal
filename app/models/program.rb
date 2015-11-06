class Program < ActiveRecord::Base
	validates :titulo, presence: true
	validates :descripcion, presence: true
	validates :dias, presence: true 
	validates :hora, presence: true
	validates :portada, presence: true
end
