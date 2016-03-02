class RepoListController < ApplicationController
  def ask
  end

  def show
    :username = params[:username]
    @user = RepoList.new(:username)
  end
end
