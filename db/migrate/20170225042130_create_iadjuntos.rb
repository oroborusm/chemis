class CreateIadjuntos < ActiveRecord::Migration[5.0]
  def change
    create_table :iadjuntos do |t|
      t.references :industrial_proyect, foreign_key: true
      t.attachment :imagen

      t.timestamps
    end
  end
end
