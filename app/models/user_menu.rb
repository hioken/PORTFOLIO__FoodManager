require 'modules/user_ingredient_manager.rb'
class UserMenu < ApplicationRecord
  #Setting
  extend UserIngredientManager
  
  belongs_to :end_user
  belongs_to :recipe
  
  #Methods
  def menu_ingredients(sarve = 1)
		ingredients = {}
		self.recipe.recipe_ingredients.each { |data| ingredients[data.ingredient_id] = data.amount * sarve }
		ingredients
  end
end
