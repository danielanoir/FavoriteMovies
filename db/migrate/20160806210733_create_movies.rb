class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :review
      t.string :photo_url
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
