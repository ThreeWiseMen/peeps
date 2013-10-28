require 'digest/md5'

module ApplicationHelper
  def gravatar_url email
    "http://gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
