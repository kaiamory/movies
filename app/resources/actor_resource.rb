class ActorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :dob, :date
  attribute :bio, :string
  attribute :image, :string
  attribute :number_of_films, :integer
  attribute :movie_id, :integer
  attribute :director_id, :integer

  # Direct associations

  has_many   :characters

  # Indirect associations

  many_to_many :movies

end
