class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :type
      t.text :context
      t.json :data
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
