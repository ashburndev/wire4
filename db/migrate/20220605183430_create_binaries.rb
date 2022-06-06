class CreateBinaries < ActiveRecord::Migration[7.0]
  def change
    create_table :binaries do |t|
      t.binary :data, limit: 4294967295
      t.boolean :searchable
      t.references :document, null: false, foreign_key: true

      t.timestamps
    end
  end
end
