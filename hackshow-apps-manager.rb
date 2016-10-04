# Hackshow Apps Manager
#Iteration Three


class App
	attr_reader :app_name, :app_points
	def initialize(app_name, app_author, app_os, app_points)
		@apps = []
		@app_name = app_name
		@app_author = app_author
		@app_os = app_os
		@app_points = app_points
	end

	def description #Iteration one
		puts @app_author + " has developed " + @app_name + " for " + @app_os + " and he has got " + @app_points.to_s + " points."
	end


	def evaluation #Iteration two
		#Alert when points are lower than 0 and higher than 10.
		if @app_points < 0 || @app_points > 10
			puts "Evaluation error, try to set another score between 0 to 10!"
		#If-else statement to output the corresponding literal score.
		else
			if @app_points >= 0 && @app_points <= 4
				@app_evaluation = "a poor"
			elsif @app_points >=5 && @app_points <= 6
				@app_evaluation = "a good"
			elsif @app_points >= 7 && @app_points <= 9
				@app_evaluation = "a very cool"
			else
				@app_evaluation = "an awesome"
			end
		puts @app_author + "has developed " + @app_name +  " for " + @app_os + " and he has made " + @app_evaluation + " aplication."
		end	 
	
	end

	def compare(app_to_compare)
		
		if @app_points < app_to_compare.app_points
			@app_score = " is worst than "
		elsif @app_points == app_to_compare.app_points
			@app_score = " is equal than "
		else
			@app_score = " is better than "
		end
		puts @app_name + @app_score + app_to_compare.app_name
	end

end


app = App.new "ILoveApples", "Richard Stallman", "iOS", 8


app.description #Iteration one
app.evaluation #Iteration two

#Iteration 3: Add a method to compare the score between two apps and it also returns the app with higher value.
other_app = App.new "SmashingCandies", "Steve Ballmer", "iOS", 6
app.compare other_app
# >> ILoveApples is better than SmashingCandies


