class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :type
      t.string :username
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
