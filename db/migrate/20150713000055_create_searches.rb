class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :category
      t.string :title
      t.string :description
      t.string :location

      t.timestamps null: false
    end
  end
end
