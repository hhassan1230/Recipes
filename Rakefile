# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
KathieArray = [
							{
								title: "Kathie's Butter Cookies",
								ingredients: ["1-cup butter softened", "1-cup sugar", "1 egg", "2 ½ cups flour", "1-teaspoon baking powder", "2-tablespoons orange juice (the sweeter, the better-can use fresh oranges)", "1-teaspoon vanilla"],
								directions: ["Combine butter, sugar and egg well.", "Stir in flour, baking powder, orange juice and vanilla until smooth.", "Chill in wax paper 2-3 hours.", "Preheat oven to 400.", "Roll out dough on floured surface to desired thickness.", "Use any cookie cutters desired.", "Place on ungreased cookie sheet.", "Bake for 6-10 minutes or until golden brown---or lighter.", "Enjoy!"],
								description: "A Kathie original piece these old fashion butter cookies will change your world.",
								url_img: "http://www.chocolatefountainneworleans.co/wp-content/uploads/2011/06/butter-cookies-Texas-kids-parties1.jpg"
							},
							{
								title: "Kathie's Brownies",
								ingredients: ["½ cup butter – softened", "1 cup sugar", "2 eggs – beaten", "1 teaspoon vanilla", "2/3 cup of flour", "2/3 cup chopped walnuts", "2 oz. Semi-Sweet Chocolate Squares"],
								directions: ["Add sugar to creamed butter.", "Mix in eggs.", "Add vanilla.", "Stir in flour.", "Add chocolate and nuts.", "Grease and flour 8 inch pan.", "Bake for 30 minutes at 325 degrees-preheated oven.", "I always use a toothpick to see if the brownies are done.  If it comes out clean… they are done.", "Frost if desired."],
								description: "The Best Brownies in the world made by MS originally and improved upon by KH",
								url_img: "https://d2k9njawademcf.cloudfront.net/indeximages/19598/original/brownies1.jpg?1403258350"
							},
							{
								title: "Kathie's Strawberry Shortcake",
								ingredients: ["1 cup sifted flour", "1 teaspoon baking powder", "¼ teaspoon salt", "1/3 cup milk", "2 tablespoons butter", "3 eggs", "1 cup sugar", "1 teaspoon vanilla", "2 pints strawberries", "½ cup confectionary sugar", "¼ teaspoon vanilla", "1 cup heavy cream"],
								directions: ["1. Sift flour, baking powder and salt onto wax paper.", "2. Heat milk with butter, just to scalding – cool slightly.", "3. Beat eggs until foamy in small bowl with mixer.  Add the 1-cup of sugar gradually until mixture is very thick and fluffy. Add Vanilla.", "4. Sprinkle flour mixture (1/3 at a time) over egg mixture; alternating with warmed milk and butter mixture – beginning and ending with the flour mixture.", "5. Pour into two greased and floured 8X11 inch pans.", "6. Bake in a moderate oven (350 degrees) for 25 minutes or until top springs back when lightly pressed.  Cool layers on a wire rack.", "7. Wash, hull, and slice the strawberries into a large bowl – reserving a cup for garnish.  Add confectionary sugar; stir slightly – crushing a few.  Let stand fpr 30 minutes, until juices run freely.", "8. Whip cream in a small bowl – you may add some confectionary sugar and a bit of vanilla when mixing the whipped cream.", "9. Place one layer on a plate.  Top with half whipped cream and berries.  Put another layer on.  Arrange cream and strawberries on top.  Garnish as desired.", "10. ENJOY!"],
								description: "Kathie's world class Imperial Strawberry Shortcake will knock your socks off. Originially made by FCCB Altered by KH",
								url_img: "http://blog.ocbeerblog.com/wp-content/uploads/2013/07/P1060056.jpg"
							 },
							{
								title: "Kathie's Pixies",
								ingredients: ["1. Melt:", "		a. ¼ cup butter", "		b. 4 squares Semi-Sweet Chocolate Squares", "		c. Cool to lukewarm", "2. Blend:", "		a. 2 cups of sugar", "		b. 4 unbeaten eggs – one at a time", "		c. ½ cup chopped walnuts", "3. Sift:", "		a. 2 cups flour", "		b. 2 teaspoons baking powder", "		c. ½ teaspoon salt"],
								directions: ["Melt butter and Chocolate.", "Add sugar.", "Blend well.", "Add eggs, one at a time.", "Mix.", "Add walnuts.", "Add dry ingredients.", "Mix thoroughly.", "Chill about 1 hour, or until easy to handle.", "Shape into balls (about 1 teaspoon full).", "Roll in Confectioners’ sugar and place on greased cookie sheet.", "Spread apart and cook at 300 degrees about 15 minutes.", "You want the cookies to be soft, so you may have to try a few with your oven.", "ENJOY!"],
								description: "Kathie's Pixies the best thing to hit your mouth since... water. Original recipe by CS. Used and edited by KH",
								url_img: "http://img.sndimg.com/food/image/upload/w_614,h_461,c_fit/v1/img/recipes/23/64/8/picpxTqg0.jpg"
								},
							{
								title: "Kathie's Melted Moments",
								ingredients: ["½ cup cornstarch", "½ cup confectionary sugar", "1-cup flour", "¾ butter = 1 ½ stick  (softened)", "Chopped nuts (Optional-any kind you like)"],
								directions: ["Stir dry ingredients together (cornstarch, sugar, flour).", "Add softened butter.", "Stir.", "You can either mix with a spoon or use your hands.", "Shape into balls (whatever size you like).", "Roll in chopped nuts, if desired.", "Bake at 325 degrees for 10 minutes.", "After the cookies come out of the over, gently roll in confectionary sugar.", "ENJOY!"],
								description: "Bested Melted Moments in the world! Originially by WR. Edited by KH.",
								url_img: "http://www.taste.com.au/images/recipes/sfi/2008/05/19723_l.jpg"
							}
							
							]
Rails.application.load_tasks
require 'open-uri'
require 'nokogiri'
require 'rake'

namespace :seed do
	task :pop_kathie => :environment do
		kathie = User.create(name: "Kathie",
								email: "kphangac@gmail.com",
								about: "I am Awesome cook and person",
								password: "aaaaaaaa",
								password_confirmation: "aaaaaaaa"
			)
		kathie.save
		KathieArray.each do |recipe|
			r = kathie.recipes.build
			r.title = recipe[:title]
			r.description = recipe[:description]
			recipe[:ingredients].each { |ele| r.ingredients.build(name: ele).save }
			recipe[:directions].each { |ele| r.directions.build(steps: ele).save }
			r.url_img = recipe[:url_img]
			r.image = recipe[:url_img]
			r.user_id = kathie.id
			r.save
		end
	end

	task :youtube => :environment do
		nummies = User.create(name: "Rosanna Pansino",
								email: "rosanna.pansino@gmail.com",
								about: "I am the cook on Nerdy Nummies and I'm pretty hot",
								password: "aaaaaaaa",
								password_confirmation: "aaaaaaaa"
			)
		YoutubeLoad.new.search("nerdy nummies")
	end
end

require 'google/api_client'
class YoutubeLoad
	attr_reader :youtube, :client
	def initialize
      @client = Google::APIClient.new(:key => ENV['youtube_id'],
                              :authorization => nil,
       :application_name => "Recipes")
      @youtube = @client.discovered_api('youtube', 'v3')
   end

	def search(query)
      options = {}
      options[:q] ||= "#{query}"
      options[:part] = 'snippet'
      options[:maxResults] = 6
      results = @client.execute!(
      api_method: @youtube.search.list,
      parameters: options
      )
      binding.pry
      JSON.parse(results.body)['items'].map do |id|
        id['id']['videoId']
      end
    end
   end