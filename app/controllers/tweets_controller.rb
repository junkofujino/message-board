class TweetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet, only: [:edit, :update, :destroy]

  def index
    @tweets = Tweet.all.order("updated_at DESC")
  end

  def new
    if params[:back]
      @tweet = Tweet.new(tweets_params)
    else
      @tweet = Tweet.new
    end
  end

  def create
    @tweet = Tweet.new(tweets_params)
    @tweet.user_id = current_user.id
    if @tweet.save
      # 一覧画面へ遷移して"ツイートしました！"とメッセージを表示します。
      redirect_to tweets_path, notice: "ツイートを作成しました！"
    else
      # 入力フォームを再描画します。
      render action: 'new'
    end
  end

  def edit
  end
  
  def update
    @tweet.update(tweets_params)
    if @tweet.valid?
      redirect_to tweets_path, notice: "ツイートを更新しました！"
    else
      render action:'edit'
    end
  end
  
  def destroy
    @tweet.destroy
    redirect_to tweets_path, notice: "ツイートを削除しました！"
  end
  
  def confirm
    @tweet = Tweet.new(tweets_params)
    render :new if @tweet.invalid?
  end
  
  private
    def tweets_params
      params.require(:tweet).permit(:content)
    end

    # idをキーとして値を取得するメソッド
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end
    
end

