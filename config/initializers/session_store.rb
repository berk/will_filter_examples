# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_engines_session',
  :secret      => '56163b915233cbbd76f3082366ae5b2d3153c247082955ea047d73bbca4ee1b3849e593b908758f94650f1ad513279d2165c6eec6a06118873def2d94ab9b1ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
