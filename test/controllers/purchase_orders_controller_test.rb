require 'test_helper'

class PurchaseOrdersControllerTest < ActionController::TestCase
  setup do
    @purchase_order = purchase_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchase_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase_order" do
    assert_difference('PurchaseOrder.count') do
      post :create, purchase_order: { cliente_id: @purchase_order.cliente_id, costo_total: @purchase_order.costo_total, link: @purchase_order.link, notas: @purchase_order.notas, numero_order: @purchase_order.numero_order, tipo_de_pago: @purchase_order.tipo_de_pago }
    end

    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should show purchase_order" do
    get :show, id: @purchase_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase_order
    assert_response :success
  end

  test "should update purchase_order" do
    patch :update, id: @purchase_order, purchase_order: { cliente_id: @purchase_order.cliente_id, costo_total: @purchase_order.costo_total, link: @purchase_order.link, notas: @purchase_order.notas, numero_order: @purchase_order.numero_order, tipo_de_pago: @purchase_order.tipo_de_pago }
    assert_redirected_to purchase_order_path(assigns(:purchase_order))
  end

  test "should destroy purchase_order" do
    assert_difference('PurchaseOrder.count', -1) do
      delete :destroy, id: @purchase_order
    end

    assert_redirected_to purchase_orders_path
  end
end
