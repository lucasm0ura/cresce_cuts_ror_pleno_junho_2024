class CreateDiscountHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :discount_histories do |t|
      t.references :discount_campaign, null: false, foreign_key: true
      t.datetime :change_date
      t.string :user
      t.decimal :old_discount_price
      t.decimal :new_discount_price

      t.timestamps
    end
  end
end
