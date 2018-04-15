class TweetMailer < ApplicationMailer
  def tweet_mail(tweet, user)
   @tweet = tweet
   @user = user

   mail to: @user.email, subject: @tweet.content
  end
end
