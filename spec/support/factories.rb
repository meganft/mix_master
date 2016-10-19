FactoryGirl.define do
  factory :artist do
    sequence :name do |n|
      "#{n} Artist"
    end
    image_path "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"

  end

  sequence :title, ["A", "B", "C"].cycle do |n|
    "#{n} Title"
  end

  factory :song do
    title
    artist
  end

  factory :playlist do
    name "My Playlist"
  end

  # factory :playlist_song do
  #   song
  #   playlist
  # end
  #
  #   sequence :playlist do |n|
  #     "#{n} PLaylist"
  #   end

#
#   factory :playlist do
#
#
#   factory :playlist_with_songs do
#     songs { create_list(:song, 3) }
#   end
# end

#   sequence :playlist_name do |n|
#      "Playlist #{n}"
#    end
#
#     factory :playlist do
#       name {generate(:playlist_name)}
#
#     factory :playlist_with_songs do
#       songs { create_list(:song, 3) }
#     end
# end

  # factory :playlist do
  #   name
  # end

end
