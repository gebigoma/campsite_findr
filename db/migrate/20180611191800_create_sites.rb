class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
