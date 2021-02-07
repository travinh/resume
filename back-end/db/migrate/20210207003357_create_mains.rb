class CreateMains < ActiveRecord::Migration[6.0]
  def change
    create_table :mains do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :bio
      t.string :contactmessage
      t.string :email
      t.string :phone
      t.string :github
      t.string :project
      t.string :website
      t.string :resumedownload

      t.timestamps
    end
  end
end
