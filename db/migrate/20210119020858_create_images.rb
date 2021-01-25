class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :unsplash_id
      t.string :artist
      t.string :portfolio
      t.string :small
      t.string :full
      t.references :user, foreign_key: true
      
      t.timestamps
    end
  end
end
