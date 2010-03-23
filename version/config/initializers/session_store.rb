# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_version_session',
  :secret      => 'f56fab1c38675489c9ea2816d700b7782698606a9fb0f1a5f0fe39813e1a23f9b7825eaad744daedd97587d9fb1cb9d78f7bce84d0d384769c527fa5a48ea9ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
