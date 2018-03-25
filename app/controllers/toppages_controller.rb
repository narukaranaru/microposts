class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
    end
  end
end

=begin 
Controller のデフォルト機能として、アクションの最後に render :自身のアクション名 を呼び出す。
ToppagesController なので app/views/toppages/index.html.erb が呼び出される。
=end