module ProjectScreenshotsHelper

	def all_projects
		@projects = Project.find.all
	end
end
