Sequel.migration do
  up do
    extension(:constraint_validations)

    DB.create_constraint_validations_table

    create_table(:users) do
      primary_key :id, :type => :varchar, :auto_increment => false, :unique => true
      String :name, :null => false
    end
  end

  down do
    extension(:constraint_validations)

    drop_table(:users)

    DB.drop_constraint_validations_table
  end
end
