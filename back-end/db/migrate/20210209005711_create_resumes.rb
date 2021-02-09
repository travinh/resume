class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.string :skillmessage
      t.integer :education_id
      t.integer :work_id
      t.integer :skills_id

      t.timestamps
    end
  end
end
