class CreateEducations < ActiveRecord::Migration[8.0]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :institution
      t.string :year
      t.string :grade

      t.timestamps
    end
  end
end
