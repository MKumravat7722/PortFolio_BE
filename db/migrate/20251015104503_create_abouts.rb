class CreateAbouts < ActiveRecord::Migration[8.0]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :location
      t.text :bio
      t.string :experience
      t.string :availability

      t.timestamps
    end
  end
end
