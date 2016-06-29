class Users::RegistrationsController < Devise::RegistrationsController

def destroy
  @tweets = Tweet.all
  @tweets.each do |tweet|
    if tweet.user_id == current_user.id
      tweet.delete
    end
  end
  super
end

end
