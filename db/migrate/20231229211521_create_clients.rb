class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.references :user, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
