class Post < ActiveRecord::Base
	validates :titulo, presence: true
	validates :descripcion, presence: true

	has_attached_file :cover, styles: {medium: "1280x720", tumb: "800x600"}
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/ , presence: true
end
