class Project < ActiveRecord::Base
  attr_accessible :description, :icon, :title, :tag_ids

  has_many :project_tags
  has_many :tags, :through => :project_tags

  

end
