class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.float :total_pop_year_2005
      t.float :age_0_to_19_year_2005
      t.float :age_65_and_over_year_2005
      t.float :per_capita_income_year_2000
      t.float :persons_living_below_200_percent_poverty
      t.float :percent_all_ppl_living_under_poverty
      t.float :percent_adequacy_prenatal_care
      t.float :percent_c_section_deliveries
      t.float :number_of_infant_deaths
      t.float :infant_mortality_rate
      t.float :low_birth_weight
      t.float :percent_multiple_births
      t.float :percent_publicly_financed_prenatal_care
      t.float :percent_teen_births
      t.timestamps
    end
  end
end
