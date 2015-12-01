class CreateGalleryPages < ActiveRecord::Migration
  def change
    create_table :gallery_pages do |t|

      t.timestamps null: false
    end
  end
end
