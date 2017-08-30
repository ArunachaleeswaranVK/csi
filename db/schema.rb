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

ActiveRecord::Schema.define(version: 20170830064013) do

  create_table "bestaccreditedstudentbranches", force: :cascade do |t|
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.integer  "program_organised_expert_lecture_no_of_activities"
    t.integer  "program_organised_seminars_workshops_no_of_activities"
    t.integer  "program_organised_short_term_training_program_no_of_activities"
    t.integer  "program_organised_symposium_no_of_activities"
    t.integer  "program_organised_motivational_talks_no_of_activities"
    t.string   "student_branch_membership_institution_category"
    t.integer  "student_branch_membership_no_of_volunteers"
    t.string   "type_of_contests_organised_for_students"
    t.integer  "number_of_contests_organised_for_students"
    t.string   "convention_seminar_type"
    t.integer  "convention_seminar_no_of_events_organised"
    t.string   "student_branch_website_url"
    t.string   "newsletter_type"
    t.integer  "no_of_issues_published_in_newsletter"
    t.string   "no_of_faculty_as_csi_members_institution_category"
    t.integer  "no_of_faculty_as_csi_members_life"
    t.integer  "no_of_faculty_as_csi_members_annual"
    t.boolean  "managing_committee_elected"
    t.string   "imno"
  end

  add_index "bestaccreditedstudentbranches", ["imno"], name: "index_bestaccreditedstudentbranches_on_imno"

  create_table "bestcsiinternationalstudentseventhosts", force: :cascade do |t|
    t.integer  "volunteers"
    t.integer  "volunteers_added"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "imno"
  end

  add_index "bestcsiinternationalstudentseventhosts", ["imno"], name: "index_bestcsiinternationalstudentseventhosts_on_imno"

  create_table "bestthesisawards", force: :cascade do |t|
    t.string   "candidate_csi_membership_no"
    t.date     "valid_till"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "name_of_nominating_institution"
    t.string   "address"
    t.string   "recognized_by"
    t.string   "reference_number_of_recognition"
    t.date     "date_of_recognition"
    t.string   "name_of_nominator"
    t.string   "designation"
    t.string   "nominator_email"
    t.string   "nominator_phone"
    t.string   "name_of_candidate"
    t.string   "candidate_email"
    t.string   "candidate_phone"
    t.string   "thesis_title"
    t.date     "defence_of_dissertation_date"
    t.string   "imno"
  end

  add_index "bestthesisawards", ["imno"], name: "index_bestthesisawards_on_imno"

  create_table "eventdetailsbystudentactivists", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_place"
    t.string   "role_played"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "studentbranchactivist_id"
  end

  create_table "facmaxpublishings", force: :cascade do |t|
    t.string   "candidate_csi_membership_no"
    t.date     "valid_till"
    t.boolean  "has_student_branch"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "faculty_name"
    t.string   "faculty_email"
    t.string   "imno"
  end

  add_index "facmaxpublishings", ["imno"], name: "index_facmaxpublishings_on_imno"

  create_table "highestsponsorshipofcsievents", force: :cascade do |t|
    t.integer  "volunteers"
    t.integer  "volunteers_added"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "imno"
  end

  add_index "highestsponsorshipofcsievents", ["imno"], name: "index_highestsponsorshipofcsievents_on_imno"

  create_table "institutes", force: :cascade do |t|
    t.string   "imno",                 null: false
    t.string   "name",                 null: false
    t.string   "address"
    t.string   "city"
    t.string   "district"
    t.string   "state"
    t.string   "pincode"
    t.string   "nominating_authority"
    t.string   "na_phone"
    t.string   "na_email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "institutes", ["imno"], name: "index_institutes_on_imno", unique: true

  create_table "internationalevents", force: :cascade do |t|
    t.string   "competetion_name"
    t.date     "date_of_event"
    t.string   "no_of_students_from_abroad_with_country_name"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "bestcsiinternationalstudentseventhost_id"
  end

  create_table "largeststudentbranches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "longestcontinuoussbcs", force: :cascade do |t|
    t.integer  "volunteers"
    t.integer  "volunteers_added"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "imno"
  end

  add_index "longestcontinuoussbcs", ["imno"], name: "index_longestcontinuoussbcs_on_imno"

  create_table "nominated_members", force: :cascade do |t|
    t.string   "ncode"
    t.string   "nm_name"
    t.string   "nm_phone"
    t.string   "nm_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "imno"
  end

  add_index "nominated_members", ["imno"], name: "index_nominated_members_on_imno"

  create_table "paperpresenterdetails", force: :cascade do |t|
    t.string   "name_of_conference"
    t.date     "date_of_conference"
    t.string   "organised_by"
    t.string   "name_place_of_conference"
    t.string   "india_or_outside"
    t.integer  "paperpresenter_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "paperpresenters", force: :cascade do |t|
    t.string   "faculty_name"
    t.string   "faculty_email"
    t.string   "faculty_number"
    t.string   "faculty_csi_membership_no"
    t.date     "valid_till"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "imno"
  end

  add_index "paperpresenters", ["imno"], name: "index_paperpresenters_on_imno"

  create_table "publishingdetailbyfaculties", force: :cascade do |t|
    t.string   "article_title"
    t.string   "published_in"
    t.date     "date_of_publishing"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "facmaxpublishing_id"
  end

  create_table "publishingdetailbystudents", force: :cascade do |t|
    t.integer  "no_of_articles_published"
    t.string   "article_title"
    t.string   "published_in"
    t.date     "date_of_publishing"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "studentmaxpublishing_id"
  end

  create_table "recordforthesisawards", force: :cascade do |t|
    t.string   "conference_or_journal"
    t.string   "name"
    t.date     "date"
    t.text     "citation"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "bestthesisaward_id"
  end

  create_table "sbc_tenure_details", force: :cascade do |t|
    t.string   "year"
    t.string   "institution_name"
    t.string   "imno_of_institution"
    t.integer  "volunteers"
    t.integer  "longestcontinuoussbc_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sbcs", force: :cascade do |t|
    t.string   "sbc_membership_no"
    t.string   "sbc_name",          null: false
    t.string   "sbc_phone"
    t.string   "sbc_email"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "imno"
  end

  add_index "sbcs", ["imno"], name: "index_sbcs_on_imno"

  create_table "studentbranchactivists", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "csi_volunteer_name"
    t.string   "csi_volunteer_email"
    t.string   "csi_volunteer_id"
    t.date     "valid_till"
    t.integer  "volunteers"
    t.integer  "volunteers_added"
    t.string   "imno"
  end

  add_index "studentbranchactivists", ["imno"], name: "index_studentbranchactivists_on_imno"

  create_table "studentmaxpublishings", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "csi_volunteer_name"
    t.string   "csi_volunteer_email"
    t.string   "csi_volunteer_id"
    t.date     "valid_till"
    t.string   "imno"
  end

  add_index "studentmaxpublishings", ["imno"], name: "index_studentmaxpublishings_on_imno"

  create_table "supportforcsievents", force: :cascade do |t|
    t.date     "date_of_event"
    t.string   "name_of_event"
    t.string   "organised_by"
    t.text     "support_details"
    t.string   "monetary_value"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "highestsponsorshipofcsievent_id"
  end

end
