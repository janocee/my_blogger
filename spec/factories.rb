FactoryGirl.define do 
	factory :user do 
		name			"Jano Cee"
		email			"jano@cee.com"
		password 	"foobar"
		password_confirmation "foobar"
	end
end