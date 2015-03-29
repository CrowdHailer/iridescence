Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id, :type => :varchar, :auto_increment => false, :unique => true
      String :email, :null => false, :unique => true
      String :password, :null => false
      String :remember_token
      String :password_reset_token
      DateTime :password_reset_created_at
      DateTime :created_at
      DateTime :updated_at
      DateTime :last_login_at
    end
  end

  down do
    drop_table(:users)
  end
end
