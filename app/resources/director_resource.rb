class DirectorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dob, :date
  attribute :name, :string
  attribute :bio, :string
  attribute :image, :string
  attribute :number_of_films, :integer
  attribute :email, :string
  attribute :password, :string

  # Direct associations

  # Indirect associations

end
