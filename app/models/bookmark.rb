class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user,
             counter_cache: true

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    movie_name
  end
end
