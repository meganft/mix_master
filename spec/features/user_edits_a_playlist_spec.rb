require 'rails_helper'

RSpec.feature "User edits a playlist" do
  scenario "they visit an playlist show page and can edit info" do

    song1, song2, = create_list(:song, 2)
    playlist = create(:playlist)
    PlaylistSong.create(song_id: song1.id, playlist_id: playlist.id)

    visit playlists_path

    click_on "My Playlist"
    click_on "Edit"
    fill_in "playlist_name", with: "New Playlist"
    uncheck("song-#{song1.id}")
    check("song-#{song2.id}")
    click_on "Update Playlist"

    expect(page).to have_content("New Playlist")
    expect(page).to have_content("#{song2.title}")
    expect(page).to_not have_content("#{song1.title}")
  end
end
