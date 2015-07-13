class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :location
      t.string :category
      t.text :description
      t.string :imageUrl

      t.timestamps null: false
    end
  end
end
