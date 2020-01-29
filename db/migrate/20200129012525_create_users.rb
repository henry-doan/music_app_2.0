class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :spotify_url
      t.string :href
      t.string :uri
      t.string :spotify_id
      t.string :access_token
      t.string :refresh_token

      t.timestamps
    end
  end
end
