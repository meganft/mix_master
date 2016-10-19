# require 'rails_helper'
#
# RSpec.feature "User edits a song" do
#   scenario "they visit an song's show page and can edit info" do
#     artist = create(:artist)
#     song = create(:song)
#
#     visit artists_path
#     click_on "Bob Marley"
#     click_on "New song"
#     fill_in "song_title", with: "Bunnies"
#
#     click_on "Create Song"
#     click_on "Edit"
#
#     fill_in "song_title", with: "Rabbits"
#
#     click_on "Update Song"
#
#     expect(page).to have_content("Rabbits")
#
#   end
# end

# visit artist_songs_path for thsi?
