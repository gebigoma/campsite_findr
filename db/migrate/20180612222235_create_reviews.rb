class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body
      t.float :rating
      t.belongs_to :user, foreign_key: true
      t.belongs_to :site, foreign_key: true

      t.timestamps
    end
  end
end
