# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140417092110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "assignment_groups", force: true do |t|
=======
  create_table "assignment_groups", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "name"
    t.integer  "weight"
    t.integer  "lop_mon_hoc_id"
    t.string   "state"
<<<<<<< HEAD
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "position"
  end

  add_index "assignment_groups", ["lop_mon_hoc_id"], name: "index_assignment_groups_on_lop_mon_hoc_id", using: :btree

<<<<<<< HEAD
  create_table "assignments", force: true do |t|
=======
  create_table "assignments", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "assignment_group_id"
    t.integer  "lop_mon_hoc_id"
    t.integer  "points"
    t.string   "name"
    t.text     "description"
<<<<<<< HEAD
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "position"
  end

  add_index "assignments", ["lop_mon_hoc_id", "assignment_group_id"], name: "index_assignments_on_lop_mon_hoc_id_and_assignment_group_id", using: :btree

<<<<<<< HEAD
  create_table "assistants", force: true do |t|
    t.integer  "user_id"
    t.integer  "lop_mon_hoc_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
=======
  create_table "assistants", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "lop_mon_hoc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "giang_vien_id"
    t.boolean  "trogiang"
  end

  add_index "assistants", ["lop_mon_hoc_id", "giang_vien_id"], name: "index_assistants_on_lop_mon_hoc_id_and_giang_vien_id", using: :btree
  add_index "assistants", ["user_id"], name: "index_assistants_on_user_id", using: :btree

<<<<<<< HEAD
  create_table "attendances", force: true do |t|
=======
  create_table "attendances", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "lich_trinh_giang_day_id"
    t.integer  "so_tiet_vang"
    t.boolean  "phep"
    t.string   "state"
    t.integer  "sinh_vien_id"
    t.text     "note"
<<<<<<< HEAD
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "attendances", ["lich_trinh_giang_day_id", "sinh_vien_id"], name: "index_attendances_on_lich_trinh_giang_day_id_and_sinh_vien_id", using: :btree
  add_index "attendances", ["state"], name: "index_attendances_on_state", using: :btree

<<<<<<< HEAD
  create_table "bangquydoidiem", id: false, force: true do |t|
    t.integer "Id",                                  null: false
    t.integer "LoaiDiem"
    t.decimal "DiemTu",     precision: 38, scale: 2
    t.decimal "DiemDen",    precision: 38, scale: 2
    t.integer "DiemQuyDoi"
    t.integer "Weight"
  end

  create_table "bangquydoidiem_backup", id: false, force: true do |t|
    t.integer "Id"
    t.integer "LoaiDiem"
    t.decimal "DiemTu",     precision: 38, scale: 0
    t.decimal "DiemDen",    precision: 38, scale: 0
    t.integer "DiemQuyDoi"
    t.integer "Weight"
  end

  create_table "calendars", force: true do |t|
=======
  create_table "calendars", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "so_tiet"
    t.integer  "so_tuan"
    t.integer  "thu"
    t.integer  "tiet_bat_dau"
    t.integer  "tuan_hoc_bat_dau"
    t.integer  "lop_mon_hoc_id"
<<<<<<< HEAD
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "giang_vien_id"
    t.string   "state"
    t.string   "phong"
  end

  add_index "calendars", ["lop_mon_hoc_id", "giang_vien_id"], name: "index_calendars_on_lop_mon_hoc_id_and_giang_vien_id", using: :btree
  add_index "calendars", ["lop_mon_hoc_id"], name: "index_calendars_on_lop_mon_hoc_id", using: :btree

<<<<<<< HEAD
  create_table "du_gios", force: true do |t|
=======
  create_table "du_gios", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "lich_trinh_giang_day_id"
    t.integer  "user_id"
    t.string   "state"
    t.text     "settings"
    t.text     "danh_gia"
<<<<<<< HEAD
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "du_gios", ["lich_trinh_giang_day_id"], name: "index_du_gios_on_lich_trinh_giang_day_id", using: :btree
  add_index "du_gios", ["user_id"], name: "index_du_gios_on_user_id", using: :btree

<<<<<<< HEAD
  create_table "enrollments", force: true do |t|
    t.integer  "lop_mon_hoc_id"
    t.integer  "sinh_vien_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
=======
  create_table "enrollments", force: :cascade do |t|
    t.integer  "lop_mon_hoc_id"
    t.integer  "sinh_vien_id"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.decimal  "tinhhinh"
    t.boolean  "bosung"
    t.integer  "diem_qua_trinh"
    t.integer  "tong_tiet_vang"
<<<<<<< HEAD
    t.integer  "trang_thai_chuyen_diem"
    t.text     "nhatky"
=======
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "enrollments", ["lop_mon_hoc_id", "sinh_vien_id"], name: "index_enrollments_on_lop_mon_hoc_id_and_sinh_vien_id", using: :btree

<<<<<<< HEAD
  create_table "giang_viens", force: true do |t|
=======
  create_table "giang_viens", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "ho"
    t.string   "dem"
    t.string   "ten"
    t.string   "code"
    t.string   "ten_khoa"
<<<<<<< HEAD
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "encoded_position"
  end

  add_index "giang_viens", ["code"], name: "index_giang_viens_on_code", using: :btree

<<<<<<< HEAD
  create_table "group_submissions", force: true do |t|
    t.integer  "enrollment_id"
    t.integer  "assignment_group_id"
    t.decimal  "grade"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
=======
  create_table "group_submissions", force: :cascade do |t|
    t.integer  "enrollment_id"
    t.integer  "assignment_group_id"
    t.decimal  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "group_submissions", ["assignment_group_id"], name: "index_group_submissions_on_assignment_group_id", using: :btree
  add_index "group_submissions", ["enrollment_id"], name: "index_group_submissions_on_enrollment_id", using: :btree

<<<<<<< HEAD
  create_table "groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "khoas", force: true do |t|
    t.string   "ten_khoa"
    t.integer  "giang_vien_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
=======
  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "khoas", force: :cascade do |t|
    t.string   "ten_khoa"
    t.integer  "giang_vien_id"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "khoas", ["giang_vien_id"], name: "index_khoas_on_giang_vien_id", using: :btree

<<<<<<< HEAD
  create_table "lich_trinh_giang_days", force: true do |t|
=======
  create_table "lich_trinh_giang_days", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.datetime "thoi_gian"
    t.integer  "tuan"
    t.text     "noi_dung"
    t.integer  "so_tiet"
    t.string   "tiet_nghi"
    t.integer  "tiet_bat_dau"
    t.string   "phong"
    t.integer  "lop_mon_hoc_id"
    t.boolean  "thuc_hanh"
    t.string   "status"
    t.string   "state"
    t.integer  "moderator_id"
<<<<<<< HEAD
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "giang_vien_id"
    t.integer  "so_tiet_moi"
    t.text     "note"
    t.datetime "completed_at"
    t.integer  "user_id"
    t.string   "ltype"
  end

  add_index "lich_trinh_giang_days", ["giang_vien_id", "lop_mon_hoc_id"], name: "index_lich_trinh_giang_days_on_giang_vien_id_and_lop_mon_hoc_id", using: :btree
  add_index "lich_trinh_giang_days", ["giang_vien_id"], name: "index_lich_trinh_giang_days_on_giang_vien_id", using: :btree
  add_index "lich_trinh_giang_days", ["lop_mon_hoc_id", "giang_vien_id"], name: "index_lich_trinh_giang_days_on_lop_mon_hoc_id_and_giang_vien_id", using: :btree
  add_index "lich_trinh_giang_days", ["moderator_id"], name: "index_lich_trinh_giang_days_on_moderator_id", using: :btree
  add_index "lich_trinh_giang_days", ["phong"], name: "index_lich_trinh_giang_days_on_phong", using: :btree
  add_index "lich_trinh_giang_days", ["thoi_gian"], name: "index_lich_trinh_giang_days_on_thoi_gian", using: :btree
  add_index "lich_trinh_giang_days", ["tuan"], name: "index_lich_trinh_giang_days_on_tuan", using: :btree
  add_index "lich_trinh_giang_days", ["user_id"], name: "index_lich_trinh_giang_days_on_user_id", using: :btree

<<<<<<< HEAD
  create_table "lop_mon_hocs", force: true do |t|
=======
  create_table "lop_mon_hocs", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "ma_lop"
    t.string   "ma_mon_hoc"
    t.text     "settings"
    t.string   "state"
<<<<<<< HEAD
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "giang_vien_id"
    t.string   "ten_mon_hoc"
    t.boolean  "duyet_thong_so"
    t.boolean  "duyet_lich_trinh"
    t.boolean  "duyet_tinh_hinh"
  end

  add_index "lop_mon_hocs", ["giang_vien_id"], name: "index_lop_mon_hocs_on_giang_vien_id", using: :btree

<<<<<<< HEAD
  create_table "mon_hocs", force: true do |t|
    t.string   "ma_mon_hoc"
    t.string   "ten_mon_hoc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "phongs", force: true do |t|
=======
  create_table "mon_hocs", force: :cascade do |t|
    t.string   "ma_mon_hoc"
    t.string   "ten_mon_hoc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phongs", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "ma_phong"
    t.integer  "tang"
    t.integer  "suc_chua_toi_da"
    t.integer  "loai"
    t.string   "toa_nha"
<<<<<<< HEAD
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "questions", force: true do |t|
    t.integer  "survey_id"
    t.string   "name"
    t.text     "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: true do |t|
    t.integer  "question_id"
    t.text     "data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sinh_viens", force: true do |t|
=======
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "name"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "results", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sinh_viens", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "ho"
    t.string   "dem"
    t.string   "ten"
    t.datetime "ngay_sinh"
    t.string   "code"
    t.string   "ma_lop_hanh_chinh"
<<<<<<< HEAD
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.boolean  "tin_chi"
    t.string   "khoa"
    t.string   "he"
    t.string   "nganh"
    t.integer  "gioi_tinh"
    t.integer  "position"
    t.string   "encoded_position"
  end

<<<<<<< HEAD
  create_table "submissions", force: true do |t|
    t.integer  "assignment_id"
    t.decimal  "grade"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
=======
  create_table "submissions", force: :cascade do |t|
    t.integer  "assignment_id"
    t.decimal  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "enrollment_id"
  end

  add_index "submissions", ["assignment_id"], name: "index_submissions_on_assignment_id", using: :btree
  add_index "submissions", ["enrollment_id"], name: "index_submissions_on_enrollment_id", using: :btree

<<<<<<< HEAD
  create_table "surveys", force: true do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: true do |t|
=======
  create_table "surveys", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenants", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "hoc_ky"
    t.string   "nam_hoc"
    t.datetime "ngay_bat_dau"
    t.datetime "ngay_ket_thuc"
    t.string   "name"
<<<<<<< HEAD
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "host"
    t.string   "adapter"
    t.string   "database"
    t.string   "username"
    t.string   "password"
    t.string   "port"
  end

<<<<<<< HEAD
  create_table "tuans", force: true do |t|
    t.integer  "stt"
    t.date     "tu_ngay"
    t.date     "den_ngay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_groups", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
  create_table "tuans", force: :cascade do |t|
    t.integer  "stt"
    t.date     "tu_ngay"
    t.date     "den_ngay"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
  end

  add_index "user_groups", ["group_id"], name: "index_user_groups_on_group_id", using: :btree
  add_index "user_groups", ["user_id"], name: "index_user_groups_on_user_id", using: :btree

<<<<<<< HEAD
  create_table "users", force: true do |t|
=======
  create_table "users", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
<<<<<<< HEAD
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.string   "username"
    t.integer  "imageable_id"
    t.string   "imageable_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["imageable_id"], name: "index_users_on_imageable_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

<<<<<<< HEAD
  create_table "vi_phams", force: true do |t|
=======
  create_table "vi_phams", force: :cascade do |t|
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "lich_trinh_giang_day_id"
    t.boolean  "di_muon"
    t.boolean  "ve_som"
    t.boolean  "bo_tiet"
    t.text     "note1"
    t.text     "note2"
    t.text     "note3"
    t.string   "state"
<<<<<<< HEAD
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
=======
    t.datetime "created_at"
    t.datetime "updated_at"
>>>>>>> ca97b789912d706b2e8a194eac8be98cfd61b622
    t.integer  "user_id"
    t.boolean  "public"
  end

  add_index "vi_phams", ["lich_trinh_giang_day_id"], name: "index_vi_phams_on_lich_trinh_giang_day_id", using: :btree
  add_index "vi_phams", ["user_id"], name: "index_vi_phams_on_user_id", using: :btree

end
