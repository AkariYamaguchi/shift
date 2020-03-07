class LikesController < ApplicationController
  def create
    #comment_idの取得
    Like.find_or_create_by(comment_id: params[:comment_id], user_id: current_user.id)
    #リダイレクトの設定
    redirect_to comments_path
  end
end
