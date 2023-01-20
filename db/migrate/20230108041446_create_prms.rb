class CreatePrms < ActiveRecord::Migration[7.0]
  def change
    create_table :prms do |t|
      t.string :name
      t.text :body
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
