class BricksController < ApplicationController
  def index
	local_filename = Rails.root.join('app', 'assets', 'stylesheets', 'screen.css.scss')
  	file_contents = ""
  	File.open(local_filename, 'w') {|f| f.write(file_contents) }
  	# system("compass compile .")
  end

  def generate
  	local_filename = Rails.root.join('app', 'assets', 'stylesheets', 'screen.css.scss')
  	boxes = params[:boxes] ? "@import 'boxes';\n" : ""
  	
	buttons = params[:buttons] ? "@import 'buttons';\n" : ""


  	file_contents = boxes + buttons + ""
  	File.open(local_filename, 'w') {|f| f.write(file_contents) }

  	system("compass compile .")
  	render :index
  end
end
