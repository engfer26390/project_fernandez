class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.text :description, null: false
      t.text :message
      t.references :customer_profile, index: true, foreign_key: true
      t.references :worker_profile, index: true, foreign_key: true
      t.text :comment
      t.decimal :rating, :default => 0.0, null: false
      t.decimal :price, :default => 0.0, null: false
      t.integer :work_hours, :dafault => 1, null: false

      t.timestamps null: false
    end
  end
end
