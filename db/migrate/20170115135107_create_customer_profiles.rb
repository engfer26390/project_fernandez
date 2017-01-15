class CreateCustomerProfiles < ActiveRecord::Migration
  def change
    create_table :customer_profiles do |t|
      t.string :availableHours

      t.timestamps null: false
    end
  end
end
