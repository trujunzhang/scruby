require 'BaseGenerator'

class AliexpresssGenerator < BaseGenerator


  def generate_excel(wb, row)
    wb.styles do |s|
      head = s.add_style :bg_color => "FF", :fg_color => "00"
      percent = s.add_style :num_fmt => 9
      wb.add_worksheet(:name => "Realtor's products") do |sheet|
        # Note: you must add rows to the document *BEFORE* applying column styles to them
        sheet.add_row ['thumbnail', 'title', 'seller', 'price', 'original_price', 'shipping', 'ship_from', 'delivery_time', 'rate_num','total_orders']

        for item in row
          sheet.add_row [item.thumbnail, item.title, item.seller, item.price, item.original_price, item.shipping, item.ship_from, item.delivery_time,item.rate_num,item.total_orders]
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