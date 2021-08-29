class TweetsController < ApplicationController
    def index
        @tweets = Tweet.all 
    end
    def create
        tweet = Tweet.create(admin_id: params[:admin_id],user_id: params[:user_id],text: params[:text])
        tweet.save
        redirect_to '/tweets'
    end
end
