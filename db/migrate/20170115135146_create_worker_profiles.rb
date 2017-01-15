class CreateWorkerProfiles < ActiveRecord::Migration
  def change
    create_table :worker_profiles do |t|
      t.string :nickname
      t.text :bio

      t.timestamps null: false
    end
  end
end
