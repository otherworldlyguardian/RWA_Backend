class ChangePhoneToBeStringInClients < ActiveRecord::Migration[5.2]
  def change
    change_column :client, :phone, :string
  end
end
