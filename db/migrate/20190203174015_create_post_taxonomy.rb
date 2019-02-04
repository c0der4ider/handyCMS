class CreatePostTaxonomy < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_taxonomies do |t|
      t.belongs_to :taxonomy, index: true
      t.belongs_to :post, index: true
    end
  end
end
