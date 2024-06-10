class CreateDiscountCampaigns < ActiveRecord::Migration[7.1]
  def change
    create_table :discount_campaigns do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :discount_price
      t.string :status

      t.timestamps
    end
  end
end
