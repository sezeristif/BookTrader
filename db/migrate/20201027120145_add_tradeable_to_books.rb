class AddTradeableToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :trade_able, :boolean
  end
end
