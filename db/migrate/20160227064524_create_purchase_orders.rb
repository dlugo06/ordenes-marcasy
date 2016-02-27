class CreatePurchaseOrders < ActiveRecord::Migration
  def change
    create_table :purchase_orders do |t|
      t.string :link
      t.text :notas
      t.integer :numero_order
      t.decimal :costo_total
      t.string :tipo_de_pago
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
