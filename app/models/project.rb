class Project < ActiveRecord::Base
  attr_accessible :description, :icon, :title, :tag_ids, :project_screenshots_attributes

  has_many :project_tags
  has_many :tags, :through => :project_tags

  has_many :project_screenshots
  accepts_nested_attributes_for :project_screenshots, :allow_destroy => true

   

end
