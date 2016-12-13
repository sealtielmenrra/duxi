class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :vists_count
      t.integer :titration
      t.string :lenguaje_origin
      t.string :translate
      t.integer :cost_origin
      t.integer :offer

      t.timestamps null: false
    end
  end
end
