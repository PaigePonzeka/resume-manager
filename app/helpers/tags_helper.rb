module TagsHelper

	def toClassName(tag)
		tag.name.downcase.gsub(/\s+/, '-')
	end
end
