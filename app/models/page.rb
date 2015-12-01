class Page < ActiveRecord::Base
  belongs_to :site
  self.inheritance_column = :page_type

  def self.page_types
    %w(Contact Menu Gallery Custom)
  end
end
