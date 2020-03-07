class LikesController < ApplicationController
  def create
    #comment_idの取得
    Like.create(comment_id: params[:comment_id], user_id: current_user.id)
    #リダイレクトの設定
    redirect_to comments_path
  end
end
