class CreateDocumentAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :document_authors do |t|
      t.references :document, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
