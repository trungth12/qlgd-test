class Phong < ActiveRecord::Base
 # attr_accessible :loai, :ma_phong, :suc_chua_toi_da, :tang, :toa_nha
 searchable do
<<<<<<< HEAD
    	text :ma_phong
=======
    	text :ma_phong, boost: 5.0
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    end
end
