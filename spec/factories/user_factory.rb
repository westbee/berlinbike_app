FactoryGirl.define do

	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
	    email
	    password "123456"
	    first_name "Adam"
	    last_name "Test"
	    admin false
  	end

  	factory :admin, class: User do
	    email
	    password "abcdef"
	    first_name "Test"
	    last_name "Admin"
	    admin true
  	end

end