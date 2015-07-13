class Search < ActiveRecord::Base
	def search_recommendations
		recommendations = Recommendation.all
		recommendations = recommendations.where(["title LIKE ? OR category LIKE ? OR description LIKE ? OR location LIKE ?", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%", "%#{keywords}%"]) unless keywords.blank?
		recommendations = recommendations.where(["category LIKE ?", category]) unless category.blank?
		recommendations = recommendations.where(["title LIKE ?", "%#{title}%"]) unless title.blank?
		recommendations = recommendations.where(["description LIKE ?", "%#{description}%"]) unless description.blank?
		recommendations = recommendations.where(["location LIKE ?", "%#{location}%"]) unless location.blank?

		return recommendations

	end
end
