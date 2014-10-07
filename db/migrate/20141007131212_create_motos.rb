class CreateMotos < ActiveRecord::Migration
  def change
    create_table :motos do |t|
      t.string :marque
      t.string :description

      t.timestamps
    end
  end
end
