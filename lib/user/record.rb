module User
  class Record < Sequel::Model(:users)
    def initialize(*args, &block)
      super
      self.id ||= SecureRandom.urlsafe_base64
    end
  end
end
