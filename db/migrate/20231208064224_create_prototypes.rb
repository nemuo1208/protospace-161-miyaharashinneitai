class CreatePrototypes < ActiveRecord::Migration[7.0]
  def change
    create_table :prototypes do |t|
      t.string :type_name
      t.text :catch_copy
      t.text :concept
      t.string :image
      t.timestamps
    end
  end
end
