class CreateCreaModules < ActiveRecord::Migration
  def change
    create_table :crea_modules do |t|
      t.string :name
      t.boolean :enabled
      t.integer :module_type
      t.string :status

      t.timestamps null: false
    end
  end
end
