class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.references :product, null: false, foreign_key: true
      t.string :discount_type
      t.decimal :discount_amount

      t.timestamps
    end
  end
end
