class CreateSocials < ActiveRecord::Migration[6.0]
  def change
    create_table :socials do |t|
      t.string :name
      t.string :url
      t.string :className

      t.timestamps
    end
  end
end
