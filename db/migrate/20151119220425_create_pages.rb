class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :page_type
      t.text :content
      t.json :data
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
