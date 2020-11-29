class AddDowncaseTitleToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :downcase_title, :string
  end
end
