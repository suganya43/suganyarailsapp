module ItemtaxesHelper

	def final_params(itemtax_params)
       if params[:itemtax][:tax_type] =="percentage"
       	  @item = Item.find(params[:itemtax][:itemid])
       	  @tot = params[:itemtax][:tax].to_i*@item.rate
       	  @finalamount = @tot.to_f/100
       end
    end 
end
