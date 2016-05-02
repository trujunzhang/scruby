class Notifier < ActionMailer::Base
  default from: "trujunzhang@gmail.com"

  def download_excel_email(to_email,download_url,item_size,app_name)
    @crawled_count = item_size
    @crawled_app = app_name
    @excel_url = download_url
    mail(to: to_email, subject: 'Export excel successful')
  end

end
