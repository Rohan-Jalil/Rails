class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.boolean :paid
      t.integer :amount
      t.string :currency
      t.boolean :refunded, :null => false, :default => false
      t.belongs_to :customer
      t.timestamps
    end
  end
end
