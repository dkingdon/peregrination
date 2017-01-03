class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamp :date_joined
      t.string :current_city

      t.timestamps
    end
  end
end
