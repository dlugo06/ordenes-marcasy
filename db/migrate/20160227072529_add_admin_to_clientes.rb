class AddAdminToClientes < ActiveRecord::Migration
  def change
    add_reference :clientes, :admin, index: true, foreign_key: true
  end
end
