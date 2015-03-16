class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.text :content
      t.references :catagory, index: true

      t.timestamps null: false
    end
    add_foreign_key :articles, :catagories
  end
end
