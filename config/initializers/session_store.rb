# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_homeroom_session',
  :secret      => '2c7363acca7fd9e4a10db31a4489407c4bc2f10233d52f93deecf152681c31380996d116291c34f8e1be2c4409d1b8d397494e7362bd181bf93da7c73234baa8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
