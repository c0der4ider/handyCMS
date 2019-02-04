class CreateTaxonomies < ActiveRecord::Migration[5.2]
  def change
    create_table :taxonomies do |t|
      t.integer :term_id
      t.string :taxonomy
      t.text :description
      t.integer :count

      t.timestamps
    end
  end
end
