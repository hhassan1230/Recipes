class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :time
      t.integer :stars
      t.string :url_img
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
