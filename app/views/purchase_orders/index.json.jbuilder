json.array!(@purchase_orders) do |purchase_order|
  json.extract! purchase_order, :id, :link, :notas, :numero_order, :costo_total, :tipo_de_pago, :cliente_id
  json.url purchase_order_url(purchase_order, format: :json)
end
