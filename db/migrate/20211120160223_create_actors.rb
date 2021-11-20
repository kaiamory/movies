class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :dob
      t.string :bio
      t.string :image
      t.integer :number_of_films
      t.integer :movie_id
      t.integer :director_id

      t.timestamps
    end
  end
end
