class Api::RecipesController < ApplicationController
  def index
    @recipes = HTTP.get("https://www.food2fork.com/api/search?key=YOUR_API_KEY&q=chicken%20breast&page=2").parse["recipes"]
    render 'index.json.jbuilder'
  end
end
