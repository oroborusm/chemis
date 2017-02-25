class CreateHadjuntos < ActiveRecord::Migration[5.0]
  def change
    create_table :hadjuntos do |t|
      t.references :hogar_proyect, foreign_key: true
      t.attachment :imagen

      t.timestamps
    end
  end
end
