class CreateReferenceLists < ActiveRecord::Migration
  def change
    create_table :reference_lists do |t|
      t.string :name, null: false
      t.string :description
      t.string :value
      t.references :reference, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reference_lists, [:name, :reference_id], :unique => true
  end
end
