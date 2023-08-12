class ChangeDoseColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :doses, :quantity, :description
  end
end
