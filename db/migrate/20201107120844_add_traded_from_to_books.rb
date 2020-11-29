class AddTradedFromToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :traded_from_id, :integer, default: 0
    add_column :books, :traded_before, :boolean, default: false
  end
end
