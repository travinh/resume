class CreateResumes < ActiveRecord::Migration[6.0]
  def change
    create_table :resumes do |t|
      t.string :skillmessage
      t.string :education_id
      t.string :work_id
      t.string :skills_id

      t.timestamps
    end
  end
end
