FactoryGirl.define do
  factory :user_record, :class => :'User::Record' do
    sequence :email do |n|
			"test#{n}@example.com"
		end
    password 'password'
    trait :admin do
      admin true
    end
  end
end
