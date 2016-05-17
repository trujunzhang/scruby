require 'axlsx'


class ExcelUtils

  def initialize(generator)
    @generator = generator

    @p = Axlsx::Package.new
    @wb = @p.workbook
  end

  def generate_xls(row)
    @generator.generate_excel(@wb,row)

    self
  end

  def export_and_notifier_email(to_email,base_url,item_size)
    @p.serialize(@generator.get_excel_path)

    download_url = "#{base_url}/#{@generator.get_excel_download_abstract_url}"
    Notifier.download_excel_email(to_email,download_url,item_size,@generator.getTable).deliver

    self
  end


end