require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
  def setup
    @user = User.create(username: "Mark", email: "howemarkhowe@gmail.com")
    @review = @user.reviews.build(name: "Damian Rice", title: "O amazing", description: "The brilliant album O by Damian Rice",)
  end
  
  test "review should be valid" do
    assert @review.valid?
  end
  
  test "user_id should be present" do
    @review.user_id = nil
    assert_not @review.valid?
  end
  
  test "name should be present" do
    @review.name = " "
    assert_not @review.valid?
  end
  
  test "name length should not be too long" do
    @review.name = "a" * 101
    assert_not @review.valid?
  end
  
  test "name length should not be too short" do
    @review.name = "aaaa"
    assert_not @review.valid?
  end
  
  test "title should be present" do
    @review.title = " "
    assert_not @review.valid?
  end
  
  test "title length should not be too long" do
    @review.title = "a" * 101
    assert_not @review.valid?
  end
  
  test "title length should not be too short" do
    @review.title = "aaaa"
    assert_not @review.valid?
  end
  
  test "description must be present" do
    @review.description = " "
    assert_not @review.valid?
  end
  
  test "description not be too long" do
    @review.description = "a" * 501
    assert_not @review.valid?
  end
  
  test "description must not be too short" do
    @review.description = "a" * 9
    assert_not @review.valid?
  end
  
end