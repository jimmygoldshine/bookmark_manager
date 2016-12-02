require 'spec_helper'

feature "signing up a user" do

  scenario "A user can fill out a form" do
    sign_up
    expect(page.status_code).to eq 200
    expect(page).to have_content("Welcome dinespoulsen84@gmail.com")
  end

  scenario "A user can be created" do
    expect{ sign_up }.to change{User.count}.from(0).to(1)
  end
end