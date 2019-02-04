class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.text :content
      t.string :title
      t.string :except
      t.string :status
      t.string :comment_status
      t.string :ping_status
      t.string :slug
      t.integer :comment_count

      t.timestamps
    end
  end
end
