class OrdersController < ApplicationController
  include ModelClass 
  sync_attributes_services :order
  
  def show
    @order = Order.find(params[:id])
    sync_attributes_read_orders
  end
  
  def create
    params.permit!
    @order = Order.new(params[:order])
      if params[:commit] == "预览并提交" ? @order.save : @order.save(:validate => false)
          #拓展属性保存
          params[:id] = @order.id
          sync_attributes_save_orders
          update_share_orders
         format.html { redirect_to(:action =>"show",:id=>@order.id) }
         format.xml  { render :xml => @order, :status => :created, :location => @order }
      else
          format.html { render :action => "new" }
          format.xml  { render :xml => @order.errors, :status => :unprocessable_entity }
      end  
      end 
  end    
  
end  
