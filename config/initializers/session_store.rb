# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_aecms_session',
  :secret      => '7a04f8269a787c3af4b68d4d10ab1c1eaa8322afe1c2a6f740f2b2c9beaa1bc24d60812dcdff5aec363b0a92c70561e2f40f9df64270ec311c6bc9170c889d59'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
