# README

## API

### Artist list

/api/v1/artists?query=drake&offset=50

Request a list of artists with a query. Optional offset to get further results.

### Favorites

/api/v1/artists/{spotify_id}

Requests, saves and returns a favorite artist. Favorites are saved in the database (only once).