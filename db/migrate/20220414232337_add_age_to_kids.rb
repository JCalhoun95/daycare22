class AddAgeToKids < ActiveRecord::Migration[6.0]
  def change
    add_column :kids, :age, :integer
  end
end
