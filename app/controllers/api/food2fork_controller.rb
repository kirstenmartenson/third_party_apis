class Api::Food2forkController < ApplicationController

# Current API Plan: Free 
# Usage: 0 / 50 
# API Key: db334c3218f142ec8636fc573692ea59 

  def index
    @recipes = HTTP.get("https://www.food2fork.com/api/search?key=db334c3218f142ec8636fc573692ea59&q=chicken%20breast&page=2").parse["recipes"]
    render 'index.json.jbuilder'
  end
end
