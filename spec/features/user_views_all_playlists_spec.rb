require 'rails_helper'

RSpec.feature "User views all playlists" do
  scenario "they visit playlists index page and see all playlists" do

    playlist = create(:playlist)

    visit playlists_path

    expect(page).to have_content("My Playlist")

    click_on "My Playlist"

    expect(page).to have_content("My Playlist")
    expect(page).to have_current_path("/playlists/#{playlist.id}")

  end
end
