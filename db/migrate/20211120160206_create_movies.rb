class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :year
      t.string :duration
      t.string :description
      t.string :director_name
      t.integer :director_id
      t.string :details
      t.string :image
      t.integer :actor_id

      t.timestamps
    end
  end
end
