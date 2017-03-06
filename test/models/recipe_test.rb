require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    def setup
        @chef = Chef.create(chefname: "bob", email: "bob@example.com")
        @recipe = @chef.recipes.build(name: "Chicken Parm", 
            summary: "This is the best chicken parm recipe ever",
            description: "Heat oil, add onions, add tomato sauce, add chicken, cook for 20 min")
    end

    test "chef_id should be present" do
        @recipe.chef_id = nil
        assert_not @recipe.valid?
    end

    test "recipe should be valid" do
        assert @recipe.valid?
    end

    test "name should be present" do
        @recipe.name = " "
        assert_not @recipe.valid?
    end

    test "name length must not be too long" do
        @recipe.name = "a" * 101
        assert_not @recipe.valid?
    end

    test "name length must not be too short" do
        @recipe.name = "a" * 4
        assert_not @recipe.valid?
    end
    
    test "summary must be present" do
        @recipe.summary = " "
        assert_not @recipe.valid? 
    end
    
    test "summary lenght should not be too long" do 
        @recipe.summary = "a" * 151
        assert_not @recipe.valid?
    end
    
    test "summary length should not be too short" do 
        @recipe.summary = "a" * 9
        assert_not @recipe.valid?
    end
    
    test "description must be present" do
        @recipe.description = ""
        assert_not @recipe.valid?
    end
    
    test "desciption length should not be too long" do
        @recipe.description = "a" * 101
        assert_not @recipe.valid?
    end
    
    test "desciprtion length should not be too short" do 
        @recipe.description = "a" * 19
        assert_not @recipe.valid?
    end
    
end