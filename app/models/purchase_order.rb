class PurchaseOrder < ActiveRecord::Base
  belongs_to :cliente
  before_create :set_initial_status

  private
  def set_initial_status
    self.status = "Recibida"
  end
end
