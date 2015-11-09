class Post < ActiveRecord::Base
	validates :titulo, presence: true
	validates :descripcion, presence: true
	validates :portada, presence: true
end
