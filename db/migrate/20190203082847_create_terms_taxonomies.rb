class CreateTermsTaxonomies < ActiveRecord::Migration[5.2]
  def change
    create_table :terms_taxonomies do |t|
      t.integer :object_id
      t.integer :taxonomy_id
      t.integer :term_order

      t.timestamps
    end
  end
end
