class MonHoc < ActiveRecord::Base
#  attr_accessible :ma_mon_hoc, :ten_mon_hoc
	searchable do
    	text :ma_mon_hoc
    	text :ten_mon_hoc
	end
end
