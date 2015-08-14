class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :seo_name
      t.text :post_body

      t.integer :user_id

      t.timestamps null: false
    end
  end
end
