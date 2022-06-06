class CreateFiledropNgUploadedFileBinaries < ActiveRecord::Migration[7.0]
  def change
    create_table :filedrop_ng_uploaded_file_binaries do |t|
      t.binary :data, limit: 4294967295
      t.bigint :part

      t.timestamps
    end
  end
end
