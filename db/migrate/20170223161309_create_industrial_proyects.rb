class CreateIndustrialProyects < ActiveRecord::Migration[5.0]
  def change
    create_table :industrial_proyects do |t|
      t.string :name
      t.text :description
      t.text :large_description

      t.timestamps
    end
  end
end
