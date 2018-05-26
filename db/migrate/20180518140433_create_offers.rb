class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :suggested_price
      t.string :status, :default => "proposed"
      t.string :other

      t.references :customer
      t.references :product

      t.timestamps
    end
  end
end
