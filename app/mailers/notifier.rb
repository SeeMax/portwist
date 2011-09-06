class Notifier < ActionMailer::Base
  def notification
    mail :to => "Max Mearsheimer <mmearshe@gmail.com>",
         :from => "Portwist <noreply@portwist.com>",
         :subject => "[Portwist] A new photo has been uploaded",
         :body => "http://portwist.com"
  end
end
