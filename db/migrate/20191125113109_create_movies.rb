class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.references :collection, foreign_key: true
      t.string :name
      t.string :image_url

      t.timestamps
    end
  end
end
