class CreateCustomerProfiles < ActiveRecord::Migration
  def change
    create_table :customer_profiles do |t|
      t.string :availableHours
      t.decimal :reputation, :default => 0.0, :null => false

      t.timestamps null: false
    end
  end
end
