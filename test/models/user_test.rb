require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	  test "a user should enter a first name" do
	  user = User.new
	  assert !user.save
	  put.errors.inspect
	  assert !user.errors[:first_name].empty?
	end

	 test "a user should enter a last name" do
	  user = User.new
	  assert !user.save
	  assert !user.errors[:last_name].empty?
	end
	test "a user should enter a profile name" do
	  user = User.new
	  assert !user.save
	  assert !user.errors[:profile_name].empty?
	end

	test "a user should have a unique name" do
		user=User.new
		user.profile_name=users(:tuan).profile_name
		assert !user.save
		#puts user.errors.inspect
		assert !users.errors[:profile_name].empty?
	end

	test "a user should have a profile name with spaces" do
		user.profile_name = "My profile with space"
		assert !user.errors[:profile_name].empty?
		assert user.errors[:profile_name].include?("Must be format correct")
	end
end
