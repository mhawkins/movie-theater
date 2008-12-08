class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.text :description_html
      t.time :runtime

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
