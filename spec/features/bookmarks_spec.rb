require 'spec_helper.rb'

feature "Homepage", :feature => :type do
  scenario "see list of links on homepage" do

    Links.create(url: 'http://www.makersacademy.com', title: "Makers Academy")

    visit '/links'

    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content ("Makers Academy")
    end
  end
end
