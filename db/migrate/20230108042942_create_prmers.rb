class CreatePrmers < ActiveRecord::Migration[7.0]
  def change
    create_table :prmers do |t|
      t.string :name
      t.text :body
      t.references :prm, null: false, foreign_key: true

      t.timestamps
    end
  end
end
