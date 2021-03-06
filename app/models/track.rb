class Track < ApplicationRecord
  belongs_to :playlist

  def self.new_from_spotify_track(spotify_track)
    Track.new(
      spotify_id: spotify_track.id,
      name: spotify_track.name,
      artists: spotify_track.artists[0].name,
      image: spotify_track.album.images[0]["url"], 
      album: spotify_track.album.name, 
      uri: spotify_track.uri,
      duration_ms: spotify_track.duration_ms,
      explicit: spotify_track.explicit,
      popularity: spotify_track.popularity
    )
  end

  def self.create_from_spotify_track(spotify_track)
    track = self.new_from_spotify_track(spotify_track)
    track.save
    track
  end
end
