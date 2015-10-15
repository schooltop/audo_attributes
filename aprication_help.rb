  module ApplicationHelper
    include ModelClass
    #获取拓展属性值具体参数值
    def send_sycn_attribute_values(me_name,send_attr)
      @attribute_values = instance_variable_get("@sync_attributes_#{me_name}_values") 
      if @attribute_values.present? && @attribute_values.select{|a| a.include? send_attr}[0].present?
        @attribute_values.select{|a| a.include? send_attr}[0][1]
      end
    end
  
    def options_for_share_sale(me_name)
      options = []
      select_list = instance_variable_get("@share_sales_#{me_name}")
      options += User.all.where("role_id = ? or role_id = ?",1,2).pluck(:username,:id)
      options_for_select(options,select_list)
    end
  end
