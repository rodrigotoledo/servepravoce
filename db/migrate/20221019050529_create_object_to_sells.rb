class CreateObjectToSells < ActiveRecord::Migration[7.0]
  def change
    create_table :object_to_sells do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
