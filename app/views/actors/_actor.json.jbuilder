json.extract! actor, :id, :name, :dob, :bio, :image, :number_of_films,
              :movie_id, :director_id, :created_at, :updated_at
json.url actor_url(actor, format: :json)
