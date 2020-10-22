class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.references :contact_id, null: false, foreign_key: true
      t.text :content
      t.string :kind

      t.timestamps
    end
  end
end
