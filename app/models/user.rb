class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :cas_authenticatable, :trackable

  # Setup accessible (or protected) attributes for your model
 # attr_accessible :username, :code, :ho_dem, :ten, :imageable_id, :imageable_type
  # attr_accessible :title, :body
  belongs_to :imageable, :dependent => :destroy, :polymorphic => true
  # has_many :du_gios, :dependent => :destroy

  has_many :user_groups, :dependent => :destroy
  has_many :groups, :through => :user_groups
  has_many :assistants, :dependent => :destroy
  
  has_many :lop_mon_hocs, -> {uniq},  :through => :assistants

  def cas_extra_attributes=(extra_attributes)
    extra_attributes.each do |name, value|
      case name.to_sym
      when :masinhvien
        if value
          sv = SinhVien.where(code: value.upcase).first
          self.imageable = sv if sv
          gv = GiangVien.where(code: value.upcase).first
          if gv
            self.imageable = gv            
            gv.assistants.giang_vien_chinh.update_all(user_id: self.id)       
          end          
        end
      end
      self.email = self.username
    end
  end
 
  def get_lops    
    if self.imageable.is_a?(SinhVien)
      return self.imageable.enrollments.map {|en| en.lop_mon_hoc if en.lop_mon_hoc and !en.lop_mon_hoc.removed? }.select {|l| !l.nil? }.uniq
    else      
     # self.assistants.map {|as| as.lop_mon_hoc if as.lop_mon_hoc and !as.lop_mon_hoc.removed? }.select {|l| !l.nil? }.uniq
    get_lops = Assistant.includes(:lop_mon_hoc).where(:giang_vien_id => self.imageable_id).map {|as| as.lop_mon_hoc if as.lop_mon_hoc and !as.lop_mon_hoc.removed? }.select {|l| !l.nil? }.uniq
    end
  end  
  
  def get_lichs    
    #get_lops.inject([]) {|res, elem| res + elem.lich_trinh_giang_days}.sort_by {|l| [l.thoi_gian, l.phong]}
    if self.imageable.is_a?(SinhVien)
      get_lops.inject([]) {|res, elem| res + elem.lich_trinh_giang_days}.sort_by {|l| [l.thoi_gian, l.phong]}
    else
      #ids = self.assistants.map(&:giang_vien_id)
      ids = Assistant.where(:giang_vien_id => self.imageable_id).map{|as| as.lop_mon_hoc_id}
<<<<<<< HEAD
      get_lichs = LichTrinhGiangDay.where(lop_mon_hoc_id: ids).sort_by {|l| [l.thoi_gian, l.phong]}
=======
      get_lichs = LichTrinhGiangDay.includes_vi_pham.where(lop_mon_hoc_id: ids).sort_by {|l| [l.thoi_gian, l.phong]}
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    end
  end
  
  def hovaten
    if imageable != nil
      return imageable.hovaten    
    else
      return ho_dem + " " + ten
    end
  end

  def giang_vien(lop)
    return nil if self.imageable.is_a?(SinhVien)
    gv = self.imageable if self.get_lops.include?(lop)   
    assistant = lop.assistants.where(:user_id => self.id).first
    gv2 = assistant.giang_vien if assistant
    gv || gv2
  end
<<<<<<< HEAD
end
=======
  
end

>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
