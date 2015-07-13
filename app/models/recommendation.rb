class Recommendation < ActiveRecord::Base
	has_attached_file :image, styles: {large: "600x600>", medium: "300x300>", thumb: "150x150#"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


	def self.search(search)
		if search
			where(["title LIKE ? OR category LIKE ? OR description LIKE ? OR location LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
		else
			all
		end
	end
end
