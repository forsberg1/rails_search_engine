class Search < ActiveRecord::Base
	set_table_name "cars"
  define_index do
    # fields
    indexes brand
    indexes created_at
    indexes model_year
    indexes out_price
    indexes brand    
    # attributes
  end
end
