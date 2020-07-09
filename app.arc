@app
vibrancy

@aws
region eu-west-2

@http
get /
get /micropub
post /micropub
post /process

@queues
download
ping

@tables
posts
  slug *String
tokens
  token *String

@indexes
posts
  published **String
posts
  post-type **String