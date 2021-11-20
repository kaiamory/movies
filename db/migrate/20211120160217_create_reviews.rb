class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.string :review_text
      t.integer :movie_id
      t.integer :user_id
      t.integer :director_id

      t.timestamps
    end
  end
end
