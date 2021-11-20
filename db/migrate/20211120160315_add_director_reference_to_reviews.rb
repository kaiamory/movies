class AddDirectorReferenceToReviews < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :reviews, :directors
    add_index :reviews, :director_id
    change_column_null :reviews, :director_id, false
  end
end
