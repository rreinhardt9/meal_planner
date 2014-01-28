require 'spec_helper'

describe "static pages" do
	
	subject { page }
	
	shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
  end
	
	describe "home page" do
		before { visit root_path }
		let(:heading) { 'Meal Planner' }
		let(:page_title) { '' }
		
		it_should_behave_like "all static pages"
		
	end
	
	describe "help page" do
		before { visit help_path }
		let(:heading) { 'Help' }
		let(:page_title) { 'Help' }
		
		it_should_behave_like "all static pages"
	end
	
	describe "about page" do
		before { visit about_path }
		let(:heading) { 'About Meal Planner' }
		let(:page_title) { 'About' }
		
		it_should_behave_like "all static pages"		
	end
end