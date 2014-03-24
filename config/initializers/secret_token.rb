# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Blogger::Application.config.secret_key_base = 'd3e6a20b398f6ef62e7f7e913d01240a2b5058c96c2c248d7e75d38f50317ecd14fee007456545d9e9650ea3c6219bdd170b2129e3d89a59b9ccc82268a4b46e'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		# Use the existing token.
		File.read(token_file).chomp
	else 
		# Generate a new token and store it in token_file.
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

Blogger::Application.config.secret_key_base = secure_token