require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @recipes = Recipe.all
  erb(:index)
end

post('/index') do
  @recipes = Recipe.all
  recipe_name = params.fetch("recipe_name")
  Recipe.create({:name => recipe_name})
  erb(:index)
end

post('/recipe/:id') do

end
