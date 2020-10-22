class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :kind
      t.string :address
      t.string :neighborhood
      t.string :city
      t.string :zip_code

      t.timestamps
    end
  end
end
