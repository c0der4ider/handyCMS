class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.integer :author_id
      t.string :author_name
      t.string :author_email
      t.string :author_ip
      t.text :content
      t.string :approved

      t.timestamps
    end
  end
end
