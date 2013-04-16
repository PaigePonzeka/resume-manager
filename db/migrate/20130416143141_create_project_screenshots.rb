class CreateProjectScreenshots < ActiveRecord::Migration
  def change
    create_table :project_screenshots do |t|
      t.integer :project_id
      t.string :url
      t.text :caption

      t.timestamps
    end
  end
end
