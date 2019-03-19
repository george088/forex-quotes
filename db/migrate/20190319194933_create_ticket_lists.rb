class CreateTicketLists < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_lists do |t|
      t.string :ticket
      t.integer :for_premium

      t.timestamps
    end
  end
end
