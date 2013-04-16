class ProjectScreenshot < ActiveRecord::Base
  attr_accessible :caption, :project_id, :url
end
