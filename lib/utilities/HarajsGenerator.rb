require 'BaseGenerator'

class HarajsGenerator < BaseGenerator


  def generate_excel(wb, row)
    wb.styles do |s|
      head = s.add_style :bg_color => "FF", :fg_color => "00"
      percent = s.add_style :num_fmt => 9
      wb.add_worksheet(:name => "opensooq") do |sheet|
        # Note: you must add rows to the document *BEFORE* applying column styles to them
        sheet.add_row ['pictures', 'title', 'city', 'address', 'memberName', 'description']

        for item in row
          sheet.add_row [item.pictures, item.title, item.city, item.address, item.memberName, item.description]
        end

        #apply the percent style to the column at index 2 skipping the first row.
        # sheet.col_style 2, percent, :row_offset => 1

        # apply the head style to the first row.
        # sheet.row_style 0, head

        #Set the second column outline level
        # sheet.column_info[1].outlineLevel = 2

        # sheet.rows[1].outlineLevel = 2
      end
    end

  end
end