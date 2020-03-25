require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CATEGORY = ["Home Comforts", "Date Night", "Immune System Boost", "Procrastinate With Baking"]
LEVEL = ["Easy", "Not Very Difficult", "Ok Slightly More Skill Needed", "Ok This is Big-Man Cooking", "Ainsley Harriot on Steroids"]
TIME = (10..120).to_a

Description.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

user = User.create!(email: "test1@test.com", password:"123123", name: "test")

200.times { Recipe.create!(name: Faker::Food.dish, category: CATEGORY.sample, user: user, description: Faker::GreekPhilosophers.quote, time: TIME.sample) }
p Recipe.first
p Recipe.last

Recipe.all.each do |recipe|
  5.times { Ingredient.create!(name: Faker::Food.ingredient, quantity: Faker::Food.measurement, recipe: recipe) }
  3.times { Description.create!(steps: Faker::Food.description, recipe: recipe ) }
end

p Ingredient.first
p Ingredient.last
p Description.first
p Description.last
