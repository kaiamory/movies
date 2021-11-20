json.extract! review, :id, :stars, :review_text, :movie_id, :user_id,
              :director_id, :created_at, :updated_at
json.url review_url(review, format: :json)
