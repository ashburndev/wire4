class CreateExports < ActiveRecord::Migration[7.0]
  def change
    create_table :exports do |t|
      t.string :type, limit: 15
      t.string :name
      t.string :state, limit: 15
      t.text :log
      t.text :document_ids_csv, limit: 16777215
      t.integer :chunks
      t.datetime :expired_at
      t.string :source
      t.integer :progress
      t.integer :total
      t.text :context
      t.integer :attempts
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
