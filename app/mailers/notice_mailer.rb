class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_blog.subject
  #
  def sendmail_blog(tweet)
    @tweet = tweet

    mail to: "kagura.fj@gmail.com",
    subject: "【自動送信メール】tweetが投稿されました"
  end
end
