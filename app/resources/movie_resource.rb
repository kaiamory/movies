class MovieResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :title, :string
  attribute :year, :string
  attribute :duration, :string
  attribute :description, :string
  attribute :director_name, :string
  attribute :director_id, :integer
  attribute :details, :string
  attribute :image, :string
  attribute :actor_id, :integer

  # Direct associations

  has_many   :reviews

  has_many   :characters

  # Indirect associations

  many_to_many :actors
end
