class ChangePhoneToBeStringInClients < ActiveRecord::Migration[5.2]
  def change
    change_column :clients, :phone, :string
  end
end
