if ENV["DROPBOX_OAUTH_BEARER"].nil?
    puts "TOKEN in nil"
    exit
end
 
require 'dropbox_api'
db_client = DropboxApi::Client.new(ENV["DROPBOX_OAUTH_BEARER"])
 
filename = 'inspi.jpg'
db_client.upload(
    sprintf('/%s', filename),
    IO.read(filename),
    :mode => :overwrite
)
