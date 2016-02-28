require "rubygems"
require "bundler/setup"
require "json"
require "yaml"
# Caches
# you may need to update this to point to the right folder
cache = File.expand_path('../.cache', __FILE__)
FileUtils.mkdir_p( cache )
cache_all_webmentions = "#{cache}/webmentions.yml"
cache_sent_webmentions = "#{cache}/webmentions_sent.yml"

# Use: rake webmention
desc "Trigger webmentions"
task :webmention do
  if File.exists?(cache_all_webmentions)
    if File.exists?(cache_sent_webmentions)
      sent_webmentions = open(cache_sent_webmentions) { |f| YAML.load(f) }
    else
      sent_webmentions = {}
    end
    all_webmentions = open(cache_all_webmentions) { |f| YAML.load(f) }
    all_webmentions.each_pair do |source, targets|
      if ! sent_webmentions[source] or ! sent_webmentions[source].kind_of?(Array)
        sent_webmentions[source] = Array.new
      end
      targets.each do |target|
        if target and ! sent_webmentions[source].find_index( target )
          if target.index( "//" ) == 0
            target  = "http:#{target}"
          end
          endpoint = `curl -s --location "#{target}" | grep 'rel="webmention"'`
          if endpoint
            endpoint.scan(/href="([^"]+)"/) do |endpoint_url|
              endpoint_url = endpoint_url[0]
              puts "Sending webmention of #{source} to #{endpoint_url}"
              command =  "curl -s -i -d \"source=#{source}&target=#{target}\" -o /dev/null #{endpoint_url}"
              # puts command
              system command
            end
            sent_webmentions[source].push( target )
          end
        end
      end
    end
    File.open(cache_sent_webmentions, 'w') { |f| YAML.dump(sent_webmentions, f) }
  end
end
# Ping Pingomatic
desc 'Ping pingomatic'
task :pingomatic do
  begin
    require 'xmlrpc/client'
    puts '* Pinging ping-o-matic'
    XMLRPC::Client.new('rpc.pingomatic.com', '/').call('weblogUpdates.extendedPing', 'miklb.com.com' , 'http://miklb.com', 'http://miklb.com/atom.xml')
  rescue LoadError
    puts '! Could not ping ping-o-matic, because XMLRPC::Client could not be found.'
  end
end

# Ping Google
desc 'Notify Google of the new sitemap'
task :sitemapgoogle do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Google about our sitemap'
    Net::HTTP.get('www.google.com', '/webmasters/tools/ping?sitemap=' + URI.escape('http://miklb.com/sitemap.xml'))
  rescue LoadError
    puts '! Could not ping Google about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

# Ping Bing
desc 'Notify Bing of the new sitemap'
task :sitemapbing do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Bing about our sitemap'
    Net::HTTP.get('www.bing.com', '/webmaster/ping.aspx?siteMap=' + URI.escape('http://miklb.com/sitemap.xml'))
  rescue LoadError
    puts '! Could not ping Bing about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

# Ping pubsubhubbub
desc 'Notify pubsubhubbub server.'
task :pingpubsubhubbub do
  begin
    require 'cgi'
    require 'net/http'
    puts '* Pinging pubsubhubbub server'
    data = 'hub.mode=publish&hub.url=' + CGI::escape("http://miklb.com/atom.xml")
    http = Net::HTTP.new('miklb.supperfeedr.com', 80)
    resp, data = http.post('http://miklb.superfeedr.com/publish',
                           data,
                           {'Content-Type' => 'application/x-www-form-urlencoded'})
    puts "Ping error: #{resp}, #{data}" unless resp.code == "204"
  end
end # task: pubsubhubbub

# rake notify
desc 'Notify various services about new content'
task :notify => [:pingomatic, :sitemapgoogle, :sitemapbing, :pingpubsubhubbub] do
end
