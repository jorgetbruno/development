class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ##User Attributes
      t.string  :name       , null: false

      t.integer :lot
      t.string  :block
      t.integer :number
      t.string  :street       , null: false
      t.string  :neighborhood , null: false
      t.string  :complement

      t.string  :city         , null: false
      t.string  :state        , null: false
      t.string  :country      , null: false
      t.integer :cep          , null: false

      t.integer :phoneOne     , null: false
      t.integer :phoneTwo
      t.integer :phoneThree

      t.integer :cpf          , null: false
      t.integer :rg           , null: false
      t.integer :rgExpeditor  , null: false

      t.date    :birthday     , null: false

      t.timestamps null: false
      t.integer :profileable_id
      t.string  :profileable_type


    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
