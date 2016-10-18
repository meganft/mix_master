require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they visit artists index page and see all names" do
    artists = ["Taylor", "Justin", "Zayn"]

    artists.each do |name|
      Artist.create(name: name, image_path: "http://cdn.newsapi.com.au/image/v1/26a2476dc344c27ac3e7670c9df711b2")
    end

    visit artists_path
    click_on "Taylor"

    expect(page).to have_content("All About Taylor!")
  end
end
