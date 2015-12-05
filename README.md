Title: Play-Rails

Team Members: Dhrushil Badani, Dhruvil Badani

Demo Link: https://gentle-anchorage-9664.herokuapp.com/

##Idea:
A la real-life Steam. Users can 'create games' at a specific location and other users can join those games. Also, one can search for games near a location and join/comment!

##Models and Description:
<li>User
has name, email, and many comments and games</li>

<li>Game
has name, location, latitude, longitude and no. of players that have joined. Belongs to user</li>

<li>Comment
has content, user id and belongs to a Comment</li>


##Features:
<li>Users can log in </li>
<li>Users can create 'games' at locations (suggested by Google Maps)</li>
<li>Users can join (~ abstracted using voting, using the acts_as_votable gem) and comment on games</li>
<li>Users can search for nearby games by typing in a location (powered by the Geocoder gem)</li>

##Division of Labor:
<li> Dhrushil: Created game, added geocoding and autocomplete functionality </li>
<li> Dhruvil: Created user and question </li>

