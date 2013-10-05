#!/Users/jearsh/.rvm/rubies/ruby-2.0.0-p247/bin/ruby

require 'uri'

class MongolabUrl
  attr_accessor :app, :url, :parsed_url

  def initialize(url, app='')
    @app = app
    @parsed_url = URI.parse(@url = url)
  end

  def backup
    %x[#{cmd}]
  end

  def cmd
    "mongodump --host #{@parsed_url.host} --port #{@parsed_url.port} -u #{@parsed_url.user} -p #{@parsed_url.password} -d #{@parsed_url.path.sub(/^\/*/, '')} #{app_dir}"
  end

  def app_dir
    return '' if @app.to_s == ''
    "-o #{@app}"
  end
end

#
# Example:
#
# murl = MongolabUrl.new 'mongodb://username1234:password1234@hostname1234:43037/database1234', 'output-here'
#
# puts murl.url
# => mongodb://username1234:password1234@hostname1234:43037/database1234
#
# puts murl.cmd
# => mongodump --host hostname1234 --port 43037 -u username1234 -p password1234 -d database1234 -o output-here
#
# puts murl.backup
# => # ...long output (actually performing the backup)...
#


