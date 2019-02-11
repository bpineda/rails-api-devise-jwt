class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|
      t.string :name,              null: false, default: ""
      t.string :description,       null: false, default: ""
      t.timestamps
    end
  end
end
