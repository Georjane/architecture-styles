class AddUserToSection < ActiveRecord::Migration[5.2]
  def change
    add_reference :sections, :user, foreign_key: true
  end
end
