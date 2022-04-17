class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.integer :kid_id
      t.integer :parent_id
    end
  end
end
