class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.string :name
      t.string :value
      t.string :autoload

      t.timestamps
    end
  end
end
