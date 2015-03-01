class User < Sequel::Model(:users)
  def initialize(*args, &block)
    super
    self.id ||= SecureRandom.urlsafe_base64
  end
end
