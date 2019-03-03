class Recipe
  validates :name, :ingredients, :cook_time, presence: true
end