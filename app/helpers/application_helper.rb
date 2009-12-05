# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper         
  def flash_div 
    flash.keys.collect { |key| content_tag( :div, flash[key], :class => "flash-msg #{key}" ) if flash[key] }.join
  end     
  
  def topnav_tab(name, options)
    classes = [options.delete(:class)]
    classes << 'current' if options[:section] && (options.delete(:section).to_a.include?(@section))
    
    "<li class='#{classes.join(' ')}'>" + link_to( "<span>"+name+"</span>", options.delete(:url), options) + "</li>"
  end
                
  def notice(step,page)
    return 'highlight' if step == page
  end                 
  
  def state_type(type)
    (type == 'error') ? 'error' : 'highlight'
  end
  
  def bill_count(bills,type)                       
    total = 0
    bills.each do |bill|   
      if bill.category == type
        total = total + bill.amount
      end
    end
    return total
  end
end
