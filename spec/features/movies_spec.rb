require 'rails_helper'

require 'spec_helper'

describe "Creating todo_lists" do 
	def createMovie(options={})
		options[:title] ||= "My Movie"
		options[:director] ||= "Impossible"
		visit root_url
		click_link "Add new movie"
		expect(page).to have_content("New Movie")
		fill_in "Title", with: options[:title]
		fill_in "Director", with: options[:director]
		click_button "Save Changes"
		
	end
	it "will create a new movie with a director" do
		createMovie
		expect(page).to have_content("Impossible")
	end

end