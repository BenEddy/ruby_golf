require 'httparty'

module Api
  extend self

  HOST = "https://gist.githubusercontent.com/BenEddy/6cfb621ebd097bb21c1a/raw/gistfile1.txt"

  def create_submission(params)
    post("/submissions.json", params.merge(identity_params))
  end

  def create_user(params)
    post("/users.json", params)
  end

  def identity_params
    {user_id: user_id}
  end

  def user_id
    File.read("./.id/user_id.txt")
  end

  def post(path, params)
    HTTParty.post("http://" + host + path, {body: params})
  end

  def host
    @host ||= HTTParty.get(HOST).body
  end
end