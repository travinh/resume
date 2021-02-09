class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :company
      t.string :title
      t.string :years
      t.string :description
      t.string :resume_id

      t.timestamps
    end
  end
end
