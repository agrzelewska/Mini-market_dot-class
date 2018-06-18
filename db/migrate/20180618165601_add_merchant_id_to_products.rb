class AddMerchantIdToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :merchant, index: true
  end
end
