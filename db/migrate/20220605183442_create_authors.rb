class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :foo
      t.string :bar
      t.string :baz

      t.timestamps
    end
  end
end
