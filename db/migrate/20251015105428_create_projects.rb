class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :tech_stack
      t.string :live_url
      t.string :github_url

      t.timestamps
    end
  end
end
