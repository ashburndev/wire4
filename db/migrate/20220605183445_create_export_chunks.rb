class CreateExportChunks < ActiveRecord::Migration[7.0]
  def change
    create_table :export_chunks do |t|
      t.integer :chunk
      t.binary :data, limit: 4294967295
      t.integer :size
      t.integer :volume
      t.references :export, null: false, foreign_key: true

      t.timestamps
    end
  end
end
