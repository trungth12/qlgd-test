class MonHoc < ActiveRecord::Base
#  attr_accessible :ma_mon_hoc, :ten_mon_hoc
	searchable do
<<<<<<< HEAD
    	text :ma_mon_hoc
=======
    	text :ma_mon_hoc, boost: 5.0
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    	text :ten_mon_hoc
	end
end
