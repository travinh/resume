class CreateEducations < ActiveRecord::Migration[6.0]
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :graduated
      t.string :description
      t.string :resume_id

      t.timestamps
    end
  end
end
