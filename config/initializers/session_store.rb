# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_payment_session',
  :secret      => 'ad1f8d727f6c56d939acd530d915b0f3ab6ed3a0a5c2e3089f766efe226fafdc21cb01e7702d0b2710569c0bded0a0063e2416b4cfd025a8ff7fc6e9e6234a52'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
