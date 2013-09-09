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

ActiveRecord::Schema.define(version: 20130908182333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "town_health_records", force: true do |t|
    t.string   "geography"
    t.float    "total_pop_year_2005"
    t.float    "age_0_to_19_year_2005"
    t.float    "age_65_and_over_year_2005"
    t.float    "per_capita_income_year_2000"
    t.float    "persons_living_below_200_percent_poverty"
    t.float    "percent_all_ppl_living_under_poverty"
    t.float    "percent_adequacy_prenatal_care"
    t.float    "percent_c_section_deliveries"
    t.float    "number_of_infant_deaths"
    t.float    "infant_mortality_rate"
    t.float    "low_birth_weight"
    t.float    "percent_multiple_births"
    t.float    "percent_publicly_financed_prenatal_care"
    t.float    "percent_teen_births"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
