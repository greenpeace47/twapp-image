class TweetMailer < ApplicationMailer
  def tweet_mail(tweet)
   @tweet = tweet

   mail to: current_user.email, subject: @tweet.content
  end
end
