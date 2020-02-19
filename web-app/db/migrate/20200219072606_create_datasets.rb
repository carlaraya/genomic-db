class CreateDatasets < ActiveRecord::Migration[6.0]
  def change
    create_table :datasets do |t|
      t.string :name
      t.text :description
      t.string :uploader
      t.string :institute

      t.timestamps
    end
  end
end
