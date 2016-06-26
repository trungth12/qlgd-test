class AssignmentGroup < ActiveRecord::Base  
 # attr_accessible :lop_mon_hoc_id, :name, :state, :weight

  belongs_to :lop_mon_hoc
  #has_many :assignments, :dependent => :destroy, :order => "position, updated_at"
<<<<<<< HEAD
  has_many :assignments, -> {order "assignments.position asc"}, :dependent => :destroy
=======
  has_many :assignments, -> {order "position"}, :dependent => :destroy
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  has_many :group_submissions, :dependent => :destroy
  acts_as_list scope: :lop_mon_hoc

  validates :name, :weight, :presence => true
  validates :lop_mon_hoc, :presence => true
  validates :weight, numericality: {only_integer: true, less_than_or_equal_to: 100, greater_than_or_equal_to: 0}
  
  def can_destroy?
  	return true if assignments.count == 0
  	return false if assignments.select {|a| a.can_destroy? == false}.count > 0
    return true
  end
<<<<<<< HEAD

  
=======
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
end
