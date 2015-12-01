class CreateCustomPages < ActiveRecord::Migration
  def change
    create_table :custom_pages do |t|

      t.timestamps null: false
    end
  end
end
