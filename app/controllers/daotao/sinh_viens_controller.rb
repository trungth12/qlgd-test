#encoding: utf-8
class Daotao::SinhViensController < TenantsController

	def lop_hanh_chinhs
		if params[:ma_lop_hanh_chinh].present?		
			svs = SinhVien.where(ma_lop_hanh_chinh: params[:ma_lop_hanh_chinh]).order('position')
			render json: svs.map {|sv| {:id => sv.id, :code => sv.code, :hovaten => sv.hovaten}}, :root => false
		else
			render json: [], :root => false
		end
	end

	def lop_mon_hocs
		if params[:lop_id].present?
			@lop = LopMonHoc.find(params[:lop_id])
			authorize @lop, :daotao?
			@enrollments = @lop.enrollments
			render json: @enrollments.map {|en| LopEnrollmentSerializer.new(en)}, :root => false
		else
			render json: [], :root => false
		end
	end

	
	def move
		if params[:lop_id].present? and params[:sinh_viens].present?
			@lop = LopMonHoc.find(params[:lop_id])
			authorize @lop, :daotao?
			sinh_vien_ids = params[:sinh_viens].map {|k| k and k.to_i}
			#@existing_enrollments_ids = @lop.enrollments.where(sinh_vien_id: sinh_vien_ids).map(&:sinh_vien_id)
			#@existing_enrollments_ids = LopMonHoc.where("ma_mon_hoc" => @lop.ma_mon_hoc).joins(:enrollments).where("enrollments.sinh_vien_id" => sinh_vien_ids).pluck("enrollments.sinh_vien_id")
			@existing_enrollments_ids = Enrollment.joins(:sinh_vien).joins(:lop_mon_hoc).where("lop_mon_hocs.ma_mon_hoc" => @lop.ma_mon_hoc).pluck(:sinh_vien_id)
			(sinh_vien_ids - @existing_enrollments_ids).each do |sinh_vien_id|
				@lop.enrollments.create(sinh_vien_id: sinh_vien_id, bosung: true)
			end
			render json: {:result => "OK"}		
		else
			render json: {:result => "Bạn cần chọn lớp hành chính và lớp môn học"}
		end
	end

	def remove
		@lop = LopMonHoc.find(params[:lop_id])
		authorize @lop, :daotao?
		@lop.enrollments.find(params[:enrollment_id]).delete
		@lop.attendances.where(enrollment_id: params[:enrollment_id]).delete_all
		@enrollments = @lop.enrollments.order("enrollments.created_at")
		render json: @enrollments.map {|en| LopEnrollmentSerializer.new(en)}, :root => false
	end
end