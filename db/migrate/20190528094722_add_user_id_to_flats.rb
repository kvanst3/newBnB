class AddUserIdToFlats < ActiveRecord::Migration[5.2]
  def change
    add_reference :flats, :user, foreign_key: true
  end
end
