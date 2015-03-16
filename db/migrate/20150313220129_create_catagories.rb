class CreateCatagories < ActiveRecord::Migration
  def change
    create_table :catagories do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_index :catagories, :name, unique: true
  end
end
