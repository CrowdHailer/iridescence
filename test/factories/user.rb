FactoryGirl.define do
  factory :user, :class => :User do
    sequence :email do |n|
			"test#{n}@example.com"
		end
    password 'password'
    trait :admin do
      admin true
    end
  end
end
