class AddUserRefToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :user, foreign_key: true
  end
end
