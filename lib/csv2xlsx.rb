require "csv2xlsx/version"
require 'csv'
require 'axlsx'

module Csv2Xlsx
  def run(args)
    dest = args.shift
    p = Axlsx::Package.new
    wb = p.workbook
    args.each do |csv_file|
      sheet_name = File.basename(csv_file, File.extname(csv_file))
      wb.add_worksheet(name: sheet_name) do |sheet|
        CSV.foreach(csv_file) do |row|
          sheet.add_row row
        end
      end
    end
    p.serialize(dest)
  end

  module_function :run
end
