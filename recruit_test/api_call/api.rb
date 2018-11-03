require 'faraday'
require 'json'

def main(argv)
  #  argvがなかった時のエラー処理できてない
  conn = Faraday.new url: "http://challenge-server.code-check.io/api/hash"
  response = conn.get do |req|
    req.params[:q] = argv[0]
  end
  puts JSON.parse(response.body)["hash"]
end

main(ARGV)
