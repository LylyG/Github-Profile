class RepoList
  attr_reader :response, :username

  def initialize(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos?sort=updated&direction=desc&access_token=#{ENV["GITHUB_KEY"]}")
    @username = username
    @list = find_list
  end

  private def find_list
    @response.select {|a| a["name"]}
  end

end  ​
