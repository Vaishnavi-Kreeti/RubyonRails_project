class AddPublicToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :public, :boolean, default: false, null: false
  end
end
