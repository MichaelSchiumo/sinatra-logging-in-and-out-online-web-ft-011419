class Users < ActiveRecord::Base
  validates_presence_of :username, :password, :balance

  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :balance
    end
  end
end
