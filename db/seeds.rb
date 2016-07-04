# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

initial_identities = "Afghan%African%African-American%African Diaspora%Algerian%Ambiguous%American%American Indian%Angolan%Argentinian%Asian%Bahamian%Bahraini%Bangladeshi%Barbadian%Basotho%Batswana%Belizean%Beninese%Black%Bolivian%Brazilian%Burkinese%Burundian%Cambodian%Cameroonian%Cape Verdean%Caucasian%Chadian%Chilean%Chinese%Colombian%Comoran%Congolese%Costa Rican%Cuban%Djiboutian%Dominican%Ecuadorean%Egyptian%El Salvadoran%Eritrean%Ethiopian%Fijian%Filipino%French Guianese%Gabonese%Gambian%Ghanian%Grenadian%Guanamanian%Guinean%Guatemalan%Guyanese%Haitian%Hawaiian/Pacific Islander%Hispanic%Hmong%Honduran%Indian%Iranian%Iraqi%Israeli%Jamaican%Japanese%Jewish%Jordanian%Kenyan%Korean%Kuwaiti%Laotian%Latinx%Lebanese%Liberian%Libyan%Madagascan%Malawian%Malaysian%Malian%Maori%Mauretanian%Mauritian%Mexican%Middle-Eastern%Mixed Race (please also specify in 'Other')%Moroccan%Mozambican%Namibian%Nicaraguan%Nigerian%Non-White%Pacific-Islander%Pakistani%Palestinian%Panamanian%Paraguayan%Persian%Peruvian%Puerto Rican%Rwandan%Salvadoran%Samoan%Saudi Arabian%Senegalese%Seychellois%Sierra Leonean%Somali%South African%Spaniard%Sub-Saharan African%Sudanese%Surinamese%Swazi%Syrian%Tanzanian%Thai%Togolese%Tongan%Trinidadian%Tunisian%Ugangan%Uruguayan%Venezuelan%Vietnamese%White%Zambian%Zimbabwean%".split("%")

initial_identities.each do |i|
  Identity.create(name: i)
end

initial_genders = ["Female", "Genderfluid/Genderqueer", "Male", "Non-Binary", "Trans"]

initial_genders.each do |i|
  Gender.create(name: i)
end

unions = ["AEA", "EMC", "SAG-AFTRA", "AGMA", "Non-Union"]
unions.each do |i|
  Union.create(name: i)
end


voice_types = ["Soprano","Mezzo", "Alto", "Tenor", "Baritone", "Bass"]
voice_types.each do |i|
  VoiceType.create(name: i)
end

dance_types = ["Non-Dancer","Mover", "Beginner", "Intermediate", "Expert"]
dance_types.each do |i|
  DanceType.create(name: i)
end

religions = ["Buddhist", "Christian", "Hindu", "Muslim", "Jewish"]
religions.each do |i|
  Religion.create(name: i)
end
