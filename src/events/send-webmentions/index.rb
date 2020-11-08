require 'webmention'

def handler(event)
  body = JSON.parse(event['Records'][0]['Sns']['Message'])
  url = ENV['ROOT_URL'] + body['url']
  Webmention::Client.new(url).send_all_mentions
end