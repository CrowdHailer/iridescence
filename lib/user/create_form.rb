module User
  class CreateForm
    def initialize(params={})
      @params = params
      @errors = Hash.new([])
    end

    attr_accessor :errors

    def email
      Email.try @params['email'] do |message|
        errors[:email] += [message]
      end
    end

    def valid?
      email
      errors.empty?
    end

    def errors_on(key)
      errors[key]
    end
  end
end
