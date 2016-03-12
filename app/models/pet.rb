class Pet < ActiveRecord::Base
	searchkick language: ["English"]

	def filter_search(params)
		es_query = '*'
		attribute_filters = {
			where: {},
			order: {created_at: :asc},
			per_page: 5
		}

		self.search(es_query, attribute_filters)
	end

	def search_data
		{
			species: species,
			breed: breed,
			name: name,
			description: description
		}
	end
	
		belongs_to :user

end
