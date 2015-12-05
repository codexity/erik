class DropUnnecessaryTables < ActiveRecord::Migration
  def up
    drop_table :contact_pages
    drop_table :menu_pages
    drop_table :custom_pages
    drop_table :gallery_pages
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
