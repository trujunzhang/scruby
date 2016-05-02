
class BaseGenerator

  def initialize(table)
    @table = table
    @export_fold = 'export'

    Time::DATE_FORMATS[:custom_datetime] = "%Y-%m-%d-%H-%M-%S"
    time = Time.now.to_s(:custom_datetime)
    @excel_name = "#{@table}_#{time}.xls"
  end

  def getTable
    @table
  end

  def get_excel_path
    dir = File.join(Rails.public_path, @export_fold, @table)
    FileUtils.mkdir_p(dir) unless File.directory?(dir)

    File.join(dir, @excel_name)
  end

  def get_excel_download_abstract_url
    "#{@export_fold}/#{@table}/#{@excel_name}"
  end

  def generate_excel(wb,row)

  end

end