require 'spec_helper'

describe "StaticPages" do
	
	describe "Home page" do
		it "should the h1 'Music Delights'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Music Delights')
		end
		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
								:text => "Music Delights | Home")
		end
	end
	
	describe "About page" do
		it "should have the h1 'About us'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About us')
		end
		it "should have the title 'About'" do
			visit '/static_pages/about'
			page.should have_selector('title',
								:text => "Music Delights | About")
		end
	end
	
	describe "Help page" do
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title',
								:text => "Music Delights | Help")
		end
	end
	
	describe "Contact page" do
		it "should have the content 'Contact us'" do
			visit '/static_pages/contact'
			page.should have_selector('h1', :text => 'Contact us')
		end
		it "should have the title 'Contact'" do
			visit '/static_pages/contact'
			page.should have_selector('title',
								:text => "Music Delights | Contact")
		end
	end
	
end
