# Hackshow Apps Manager
#Iteration One


class App
	def initialize(app_name, app_author, app_os, app_points)
		@apps = []
		@app_name = app_name
		@app_author = app_author
		@app_os = app_os
		@app_points = app_points
	end

	def description
		puts @app_author + " has developed " + @app_name + " for " + @app_os + " and he has got " + @app_points.to_s + " points."
	end
end




app = App.new "ILoveApples", "Richard Stallman", "iOS", 8

app.description
