module User
  class Entity < Errol::Entity
    entry_accessor  :email,
                    :password,
                    :last_login_at
  end
end
