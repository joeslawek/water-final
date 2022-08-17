class CreateWaterPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :water_posts do |t|
      t.date :date
      t.integer :ounce_count
      t.string :caption
      t.integer :post_author_id
      t.integer :likes_count
      t.integer :comments_count

      t.timestamps
    end
  end
end
