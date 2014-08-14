require 'spec_helper'

feature 'Show all my wanted items', %q{
  As a user of this service
  I want to visit the homepage and see all of the items I have listed as wanted items.
} do

  background do
    p1 = create(:item,:title => 'item 1', :created_at => 6.days.ago)
    p2 = create(:item,:title => 'item 2', :created_at => 5.days.ago)
    p3 = create(:item,:title => 'item 3', :created_at => 4.days.ago)
    p4 = create(:item,:title => 'item 4', :created_at => 3.days.ago)
    p5 = create(:item,:title => 'item 5', :created_at => 2.days.ago)
    p6 = create(:item,:title => 'item 6', :created_at => 1.day.ago)
  end

  scenario 'Show the latest wanted items on start page' do
    visit root_path
    expect(page).to have_content 'item 6'
    expect(page).to have_content 'item 5'
    expect(page).to have_content 'item 4'
    expect(page).to have_content 'item 3'
    expect(page).to have_content 'item 2'   
  end

end