# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'


CSV.foreach('db/data/mass_chip_data.csv', headers: true, converters: :all) do |record|

  record_attributes = {
    geography: record[0],
    total_pop_year_2005: record[1],
    age_0_to_19_year_2005: record[2],
    age_65_and_over_year_2005: record[3],
    per_capita_income_year_2000: record[4],
    persons_living_below_200_percent_poverty: record[5],
    percent_all_ppl_living_under_poverty: record[6],
    percent_adequacy_prenatal_care: record[7],
    percent_c_section_deliveries: record[8],
    number_of_infant_deaths: record[9],
    infant_mortality_rate: record[10],
    low_birth_weight: record[11],
    percent_multiple_births: record[12],
    percent_publicly_financed_prenatal_care: record[13],
    percent_teen_births: record[14]


  }
   record = TownHealthRecord.where(record_attributes).first

    if record.nil?
      record = TownHealthRecord.new(record_attributes)
    end

    record.save!
  end
