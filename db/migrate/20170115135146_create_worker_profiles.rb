class CreateWorkerProfiles < ActiveRecord::Migration
  def change
    create_table :worker_profiles do |t|
      t.string :nickname, null: false
      t.text :bio
      t.text :skills
      t.decimal :reputation, :default => 0.0, :null => false

      t.timestamps null: false
    end
  end
end
