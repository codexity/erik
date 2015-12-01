class CreateMenuPages < ActiveRecord::Migration
  def change
    create_table :menu_pages do |t|

      t.timestamps null: false
    end
  end
end
