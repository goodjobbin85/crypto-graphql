class AddUserToCryptos < ActiveRecord::Migration[6.1]
  def change
    add_reference :cryptos, :user, null: false, foreign_key: true
  end
end
