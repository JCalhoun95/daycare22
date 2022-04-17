class AddDescriptionToKids < ActiveRecord::Migration[6.0]
  def change
    add_column :kids, :description, :text
  end
end
