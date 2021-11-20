json.extract! director, :id, :dob, :name, :bio, :image, :number_of_films, :created_at, :updated_at
json.url director_url(director, format: :json)
json.token user.generate_jwt