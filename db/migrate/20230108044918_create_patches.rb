class CreatePatches < ActiveRecord::Migration[7.0]
  def change
    create_table :patches do |t|
      t.text :description
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
