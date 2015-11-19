class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :domain
      t.string :title
      t.string :slogan

      t.timestamps null: false
    end
  end
end
