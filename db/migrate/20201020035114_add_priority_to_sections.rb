class AddPriorityToSections < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :priority, :integer
  end
end
