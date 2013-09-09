
# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.order("age_65_and_over_year_2005 desc").limit(3).offset(1).all
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.order("age_0_to_19_year_2005 desc").limit(3).offset(1).all
# What 5 towns have the lowest per capita income?
TownHealthRecord.order("per_capita_income_year_2000").limit(5).all
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.order("percent_teen_births desc").limit(5).where.not(geography:"Boston, Becket, Beverly")

# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.order("number_of_infant_deaths desc").limit(1).where.not(geography:"Boston")

