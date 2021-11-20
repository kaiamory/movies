json.extract! movie, :id, :title, :year, :duration, :description, :director_name, :director_id, :details, :image, :actor_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
