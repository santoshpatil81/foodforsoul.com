require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  
  def setup
    @chef = Chef.create(chefname: "bob", email: "bob@example.com")
    @recipe = @chef.recipes.build(name: "chicken parm", summary: "this is the best chicken parm recipe ever",
              description: "heat oil, add onions, add tomato sauce, add chicken, cook for 20 minutes")
    @review = @chef.review.build(body: "This is the best recipe of all time you are the best chef of all time alton brown sux!")
  end
  
  test "body must be present" do
    @review.body = " "
    assert_not @review.valid?
  end
  
  test "body should not be too long" do
    @recipe.body = "a" * 501
    assert_not @review.valid?
  end
  
  test "body should not be too short" do
    @recipe.body = "a" * 19
    assert_not @review.valid?
  end
  
end