module User
  class Record < Sequel::Model(:users)
    def initialize(*args, &block)
      super
      self.id ||= SecureRandom.urlsafe_base64
    end

    plugin :timestamps, :update_on_create=>true

    plugin :serialization

    serialize_attributes [
      lambda{ |password| BCrypt::Password.create(password) },
      lambda{ |crypted| BCrypt::Password.new(crypted) }
    ], :password, :remember_token, :password_reset_token
  end
end
