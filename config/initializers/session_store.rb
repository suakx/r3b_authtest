# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_r3b_authtest_session',
  :secret => '15714f9e8dc6dbdb95dc8d228f0010c40f19905a5ac5cb255a731af4d0699e48575bbc9009687b1b254df1c7e42e39bff2ec7e0615470ac54339d47fda64bf0c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
