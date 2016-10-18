require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "they visit an artist show page and can edit info" do
    artists = ["Taylor", "Justin", "Zayn"]
    artist_image = "http://cdn.newsapi.com.au/image/v1/26a2476dc344c27ac3e7670c9df711b2"

    artists.each do |name|
      Artist.create(name: name, image_path: artist_image )
    end

    visit artists_path
    click_on "Taylor"
    click_on "Edit"
    fill_in "artist_name", with: "New Artist"
    click_on "Update Artist"


    expect(page).to have_content("New Artist")
    expect(page).to have_css("img[src=\"#{artist_image}\"]")
  end
end
