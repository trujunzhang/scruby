require 'BaseGenerator'

class RealtorsGenerator < BaseGenerator


  def generate_excel(wb, row)
    wb.styles do |s|
      head = s.add_style :bg_color => "FF", :fg_color => "00"
      percent = s.add_style :num_fmt => 9
      wb.add_worksheet(:name => "DealsDirect's products") do |sheet|
        # Note: you must add rows to the document *BEFORE* applying column styles to them
        sheet.add_row ['images', 'address', 'price', 'listing_id', 'property_type', 'land_size', 'built_in', 'Info_name', 'Info_phone','Info_email','description']

        for item in row
          sheet.add_row [item.images, item.address, item.price, item.listing_id, item.property_type, item.land_size, item.built_in, item.Info_name,item.Info_phone,item.Info_email,item.description]
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