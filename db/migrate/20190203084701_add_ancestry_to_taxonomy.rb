class AddAncestryToTaxonomy < ActiveRecord::Migration[5.2]
  def change
    add_column :taxonomies, :ancestry, :string
    add_index :taxonomies, :ancestry
  end
end
