class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name, null: false, default: ''
      t.string :email, null: false, default: ''
      t.string :phone, null: false, default: ''
      t.string :kind, null: false, default: ''
      t.string :address, null: false, default: ''
      t.string :neighborhood, null: false, default: ''
      t.string :city, null: false, default: ''
      t.string :zip_code, null: false, default: ''

      t.timestamps
    end
  end
end
