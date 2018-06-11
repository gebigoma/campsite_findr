class AddUserRefToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :site, :user, foreign_key: true
  end
end
