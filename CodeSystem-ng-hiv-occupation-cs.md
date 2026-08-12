# HIV Occupation Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV Occupation Codes**

## CodeSystem: HIV Occupation Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-occupation-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivOccupationCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.56 | |

 
Codes used for representing the patient's occupation 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivOccupationVS](ValueSet-ng-hiv-occupation-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-occupation-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-occupation-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.56"
  }],
  "version" : "0.0.0",
  "name" : "NgHivOccupationCS",
  "title" : "HIV Occupation Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-12T13:22:49+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    },
    {
      "system" : "email",
      "value" : "emeka2015@gmail.com"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "lekeojewale@gmail.com",
      "use" : "work"
    }]
  },
  {
    "name" : "Nigeria Digital in Health Initiative.",
    "telecom" : [{
      "system" : "email",
      "value" : "emeka2015@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "Codes used for representing the patient's occupation",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 598,
  "concept" : [{
    "code" : "Accountants",
    "display" : "Accountants"
  },
  {
    "code" : "Accounting-and-bookkeeping-clerks",
    "display" : "Accounting and bookkeeping clerks"
  },
  {
    "code" : "Accounting-associate-professionals",
    "display" : "Accounting associate professionals"
  },
  {
    "code" : "Actors",
    "display" : "Actors"
  },
  {
    "code" : "Administration-professionals",
    "display" : "Administration professionals"
  },
  {
    "code" : "Administrative-and-commercial-managers",
    "display" : "Administrative and commercial managers"
  },
  {
    "code" : "Administrative-and-executive-secretaries",
    "display" : "Administrative and executive secretaries"
  },
  {
    "code" : "Administrative-and-specialised-secretaries",
    "display" : "Administrative and specialised secretaries"
  },
  {
    "code" : "Advertising-and-marketing-professionals",
    "display" : "Advertising and marketing professionals"
  },
  {
    "code" : "Advertising-and-public-relations-managers",
    "display" : "Advertising and public relations managers"
  },
  {
    "code" : "Aged-care-services-managers",
    "display" : "Aged care services managers"
  },
  {
    "code" : "Agricultural-and-forestry-production-managers",
    "display" : "Agricultural and forestry production managers"
  },
  {
    "code" : "Agricultural-and-industrial-machinery-mechanics-and-repairers",
    "display" : "Agricultural and industrial machinery mechanics and repairers"
  },
  {
    "code" : "Agricultural-technicians",
    "display" : "Agricultural technicians"
  },
  {
    "code" : "Agricultural-forestry-and-fishery-labourers",
    "display" : "Agricultural, forestry and fishery labourers"
  },
  {
    "code" : "Air-conditioning-and-refrigeration-mechanics",
    "display" : "Air conditioning and refrigeration mechanics"
  },
  {
    "code" : "Air-traffic-controllers",
    "display" : "Air traffic controllers"
  },
  {
    "code" : "Air-traffic-safety-electronics-technicians",
    "display" : "Air traffic safety electronics technicians"
  },
  {
    "code" : "Aircraft-engine-mechanics-and-repairers",
    "display" : "Aircraft engine mechanics and repairers"
  },
  {
    "code" : "Aircraft-pilots-and-related-associate-professionals",
    "display" : "Aircraft pilots and related associate professionals"
  },
  {
    "code" : "Ambulance-workers",
    "display" : "Ambulance workers"
  },
  {
    "code" : "Animal-producers",
    "display" : "Animal producers"
  },
  {
    "code" : "Animal-producers-not-elsewhere-classified",
    "display" : "Animal producers not elsewhere classified"
  },
  {
    "code" : "Announcers-on-radio-television-and-other-media",
    "display" : "Announcers on radio, television and other media"
  },
  {
    "code" : "Apiarists-and-sericulturists",
    "display" : "Apiarists and sericulturists"
  },
  {
    "code" : "Applications-programmers",
    "display" : "Applications programmers"
  },
  {
    "code" : "Aquaculture-and-fisheries-production-managers",
    "display" : "Aquaculture and fisheries production managers"
  },
  {
    "code" : "Aquaculture-workers",
    "display" : "Aquaculture workers"
  },
  {
    "code" : "Architects-planners-surveyors-and-designers",
    "display" : "Architects, planners, surveyors and designers"
  },
  {
    "code" : "Archivists-and-curators",
    "display" : "Archivists and curators"
  },
  {
    "code" : "ARMED-FORCES",
    "display" : "ARMED FORCES"
  },
  {
    "code" : "Armed-forces-occupations",
    "display" : "Armed forces occupations"
  },
  {
    "code" : "Armed-forces-occupations-other-ranks",
    "display" : "Armed forces occupations, other ranks"
  },
  {
    "code" : "Artistic-cultural-and-culinary-associate-professionals",
    "display" : "Artistic, cultural and culinary associate professionals"
  },
  {
    "code" : "Assemblers",
    "display" : "Assemblers"
  },
  {
    "code" : "Assemblers-not-elsewhere-classified",
    "display" : "Assemblers not elsewhere classified"
  },
  {
    "code" : "Astrologers-fortune-tellers-and-related-workers",
    "display" : "Astrologers, fortune-tellers and related workers"
  },
  {
    "code" : "Athletes-and-sports-players",
    "display" : "Athletes and sports players"
  },
  {
    "code" : "Audiologists-and-speech-therapists",
    "display" : "Audiologists and speech therapists"
  },
  {
    "code" : "Authors-and-related-writers",
    "display" : "Authors and related writers"
  },
  {
    "code" : "Authors-journalists-and-linguists",
    "display" : "Authors, journalists and linguists"
  },
  {
    "code" : "Bakers-pastry-cooks-and-confectionery-makers",
    "display" : "Bakers, pastry-cooks and confectionery makers"
  },
  {
    "code" : "Bank-tellers-and-related-clerks",
    "display" : "Bank tellers and related clerks"
  },
  {
    "code" : "Bartenders",
    "display" : "Bartenders"
  },
  {
    "code" : "Beauticians-and-related-workers",
    "display" : "Beauticians and related workers"
  },
  {
    "code" : "Bicycle-and-related-repairers",
    "display" : "Bicycle and related repairers"
  },
  {
    "code" : "Biologists-botanists-zoologists-and-related-professionals",
    "display" : "Biologists, botanists, zoologists and related professionals"
  },
  {
    "code" : "Blacksmiths-hammersmiths-and-forging-press-workers",
    "display" : "Blacksmiths, hammersmiths and forging press workers"
  },
  {
    "code" : "Blacksmiths-toolmakers-and-related-trades-workers",
    "display" : "Blacksmiths, toolmakers and related trades workers"
  },
  {
    "code" : "Bleaching-dyeing-and-fabric-cleaning-machine-operators",
    "display" : "Bleaching, dyeing and fabric cleaning machine operators"
  },
  {
    "code" : "Bookmakers-croupiers-and-related-gaming-workers",
    "display" : "Bookmakers, croupiers and related gaming workers"
  },
  {
    "code" : "Bricklayers-and-related-workers",
    "display" : "Bricklayers and related workers"
  },
  {
    "code" : "Broadcasting-and-audio-visual-technicians",
    "display" : "Broadcasting and audio-visual technicians"
  },
  {
    "code" : "Building-and-housekeeping-supervisors",
    "display" : "Building and housekeeping supervisors"
  },
  {
    "code" : "Building-and-related-electricians",
    "display" : "Building and related electricians"
  },
  {
    "code" : "Building-and-related-trades-workers-excluding-electricians",
    "display" : "Building and related trades workers, excluding electricians"
  },
  {
    "code" : "Building-architects",
    "display" : "Building architects"
  },
  {
    "code" : "Building-caretakers",
    "display" : "Building caretakers"
  },
  {
    "code" : "Building-construction-labourers",
    "display" : "Building construction labourers"
  },
  {
    "code" : "Building-finishers-and-related-trades-workers",
    "display" : "Building finishers and related trades workers"
  },
  {
    "code" : "Building-frame-and-related-trades-workers",
    "display" : "Building frame and related trades workers"
  },
  {
    "code" : "Building-frame-and-related-trades-workers-not-elsewhere-classified",
    "display" : "Building frame and related trades workers not elsewhere classified"
  },
  {
    "code" : "Building-structure-cleaners",
    "display" : "Building structure cleaners"
  },
  {
    "code" : "Bus-and-tram-drivers",
    "display" : "Bus and tram drivers"
  },
  {
    "code" : "Business-and-administration-associate-professionals",
    "display" : "Business and administration associate professionals"
  },
  {
    "code" : "Business-and-administration-professionals",
    "display" : "Business and administration professionals"
  },
  {
    "code" : "Business-services-agents",
    "display" : "Business services agents"
  },
  {
    "code" : "Business-services-agents-not-elsewhere-classified",
    "display" : "Business services agents not elsewhere classified"
  },
  {
    "code" : "Business-services-and-administration-managers",
    "display" : "Business services and administration managers"
  },
  {
    "code" : "Business-services-and-administration-managers-not-elsewhere-classified",
    "display" : "Business services and administration managers not elsewhere classified"
  },
  {
    "code" : "BUSINESSMAN/WOMAN",
    "display" : "BUSINESSMAN/WOMAN"
  },
  {
    "code" : "Butchers-fishmongers-and-related-food-preparers",
    "display" : "Butchers, fishmongers and related food preparers"
  },
  {
    "code" : "Buyers",
    "display" : "Buyers"
  },
  {
    "code" : "Cabinet-makers-and-related-workers",
    "display" : "Cabinet-makers and related workers"
  },
  {
    "code" : "Car-taxi-and-van-drivers",
    "display" : "Car, taxi and van drivers"
  },
  {
    "code" : "Car-van-and-motorcycle-drivers",
    "display" : "Car, van and motorcycle drivers"
  },
  {
    "code" : "Carpenters-and-joiners",
    "display" : "Carpenters and joiners"
  },
  {
    "code" : "Cartographers-and-surveyors",
    "display" : "Cartographers and surveyors"
  },
  {
    "code" : "Cashiers-and-ticket-clerks",
    "display" : "Cashiers and ticket clerks"
  },
  {
    "code" : "Cement-stone-and-other-mineral-products-machine-operators",
    "display" : "Cement, stone and other mineral products machine operators"
  },
  {
    "code" : "Chefs",
    "display" : "Chefs"
  },
  {
    "code" : "Chemical-and-photographic-products-plant-and-machine-operators",
    "display" : "Chemical and photographic products plant and machine operators"
  },
  {
    "code" : "Chemical-and-physical-science-technicians",
    "display" : "Chemical and physical science technicians"
  },
  {
    "code" : "Chemical-engineering-technicians",
    "display" : "Chemical engineering technicians"
  },
  {
    "code" : "Chemical-engineers",
    "display" : "Chemical engineers"
  },
  {
    "code" : "Chemical-processing-plant-controllers",
    "display" : "Chemical processing plant controllers"
  },
  {
    "code" : "Chemical-products-plant-and-machine-operators",
    "display" : "Chemical products plant and machine operators"
  },
  {
    "code" : "Chemists",
    "display" : "Chemists"
  },
  {
    "code" : "Chief-executives-senior-officials-and-legislators",
    "display" : "Chief executives, senior officials and legislators"
  },
  {
    "code" : "Child-care-services-managers",
    "display" : "Child care services managers"
  },
  {
    "code" : "Child-care-workers",
    "display" : "Child care workers"
  },
  {
    "code" : "Child-care-workers-and-teachers'-aides",
    "display" : "Child care workers and teachers' aides"
  },
  {
    "code" : "Civil-engineering-labourers",
    "display" : "Civil engineering labourers"
  },
  {
    "code" : "Civil-engineering-technicians",
    "display" : "Civil engineering technicians"
  },
  {
    "code" : "Civil-engineers",
    "display" : "Civil engineers"
  },
  {
    "code" : "CIVIL-SERVANT",
    "display" : "CIVIL SERVANT"
  },
  {
    "code" : "Cleaners-and-helpers",
    "display" : "Cleaners and helpers"
  },
  {
    "code" : "Cleaners-and-helpers-in-offices-hotels-and-other-establishments",
    "display" : "Cleaners and helpers in offices, hotels and other establishments"
  },
  {
    "code" : "Cleaning-and-housekeeping-supervisors-in-offices-hotels-and-other-establishments",
    "display" : "Cleaning and housekeeping supervisors in offices, hotels and other establishments"
  },
  {
    "code" : "Clearing-and-forwarding-agents",
    "display" : "Clearing and forwarding agents"
  },
  {
    "code" : "Clerical-support-workers",
    "display" : "Clerical support workers"
  },
  {
    "code" : "Clerical-support-workers-not-elsewhere-classified",
    "display" : "Clerical support workers not elsewhere classified"
  },
  {
    "code" : "Client-information-workers",
    "display" : "Client information workers"
  },
  {
    "code" : "Client-information-workers-not-elsewhere-classified",
    "display" : "Client information workers not elsewhere classified"
  },
  {
    "code" : "Coding-proof-reading-and-related-clerks",
    "display" : "Coding, proof-reading and related clerks"
  },
  {
    "code" : "Commercial-sales-representatives",
    "display" : "Commercial sales representatives"
  },
  {
    "code" : "Commissioned-armed-forces-officers",
    "display" : "Commissioned armed forces officers"
  },
  {
    "code" : "Community-health-workers",
    "display" : "Community health workers"
  },
  {
    "code" : "Companions-and-valets",
    "display" : "Companions and valets"
  },
  {
    "code" : "Computer-network-and-systems-technicians",
    "display" : "Computer network and systems technicians"
  },
  {
    "code" : "Computer-network-professionals",
    "display" : "Computer network professionals"
  },
  {
    "code" : "Concrete-placers-concrete-finishers-and-related-workers",
    "display" : "Concrete placers, concrete finishers and related workers"
  },
  {
    "code" : "Conference-and-event-planners",
    "display" : "Conference and event planners"
  },
  {
    "code" : "Construction-managers",
    "display" : "Construction managers"
  },
  {
    "code" : "Construction-supervisors",
    "display" : "Construction supervisors"
  },
  {
    "code" : "Contact-centre-information-clerks",
    "display" : "Contact centre information clerks"
  },
  {
    "code" : "Contact-centre-salespersons",
    "display" : "Contact centre salespersons"
  },
  {
    "code" : "Cooks",
    "display" : "Cooks"
  },
  {
    "code" : "Craft-and-related-trades-workers",
    "display" : "Craft and related trades workers"
  },
  {
    "code" : "Craft-and-related-workers-not-elsewhere-classified",
    "display" : "Craft and related workers not elsewhere classified"
  },
  {
    "code" : "Crane-hoist-and-related-plant-operators",
    "display" : "Crane, hoist and related plant operators"
  },
  {
    "code" : "Creative-and-performing-artists",
    "display" : "Creative and performing artists"
  },
  {
    "code" : "Creative-and-performing-artists-not-elsewhere-classified",
    "display" : "Creative and performing artists not elsewhere classified"
  },
  {
    "code" : "Credit-and-loans-officers",
    "display" : "Credit and loans officers"
  },
  {
    "code" : "Crop-farm-labourers",
    "display" : "Crop farm labourers"
  },
  {
    "code" : "Customer-services-clerks",
    "display" : "Customer services clerks"
  },
  {
    "code" : "Customs-and-border-inspectors",
    "display" : "Customs and border inspectors"
  },
  {
    "code" : "Dairy-products-makers",
    "display" : "Dairy-products makers"
  },
  {
    "code" : "Dancers-and-choreographers",
    "display" : "Dancers and choreographers"
  },
  {
    "code" : "Data-entry-clerks",
    "display" : "Data entry clerks"
  },
  {
    "code" : "Database-and-network-professionals",
    "display" : "Database and network professionals"
  },
  {
    "code" : "Database-and-network-professionals-not-elsewhere-classified",
    "display" : "Database and network professionals not elsewhere classified"
  },
  {
    "code" : "Database-designers-and-administrators",
    "display" : "Database designers and administrators"
  },
  {
    "code" : "Debt-collectors-and-related-workers",
    "display" : "Debt-collectors and related workers"
  },
  {
    "code" : "Deep-sea-fishery-workers",
    "display" : "Deep-sea fishery workers"
  },
  {
    "code" : "Dental-assistants-and-therapists",
    "display" : "Dental assistants and therapists"
  },
  {
    "code" : "Dentists",
    "display" : "Dentists"
  },
  {
    "code" : "Dieticians-and-nutritionists",
    "display" : "Dieticians and nutritionists"
  },
  {
    "code" : "Dispensing-opticians",
    "display" : "Dispensing opticians"
  },
  {
    "code" : "DOCTOR",
    "display" : "DOCTOR"
  },
  {
    "code" : "Domestic-cleaners-and-helpers",
    "display" : "Domestic cleaners and helpers"
  },
  {
    "code" : "Domestic-housekeepers",
    "display" : "Domestic housekeepers"
  },
  {
    "code" : "Domestic-hotel-and-office-cleaners-and-helpers",
    "display" : "Domestic, hotel and office cleaners and helpers"
  },
  {
    "code" : "Door-to-door-salespersons",
    "display" : "Door to door salespersons"
  },
  {
    "code" : "Draughtspersons",
    "display" : "Draughtspersons"
  },
  {
    "code" : "Drivers-and-mobile-plant-operators",
    "display" : "Drivers and mobile plant operators"
  },
  {
    "code" : "Drivers-of-animal-drawn-vehicles-and-machinery",
    "display" : "Drivers of animal-drawn vehicles and machinery"
  },
  {
    "code" : "Driving-instructors",
    "display" : "Driving instructors"
  },
  {
    "code" : "Early-childhood-educators",
    "display" : "Early childhood educators"
  },
  {
    "code" : "Earthmoving-and-related-plant-operators",
    "display" : "Earthmoving and related plant operators"
  },
  {
    "code" : "Economists",
    "display" : "Economists"
  },
  {
    "code" : "Education-managers",
    "display" : "Education managers"
  },
  {
    "code" : "Education-methods-specialists",
    "display" : "Education methods specialists"
  },
  {
    "code" : "Electrical-and-electronic-equipment-assemblers",
    "display" : "Electrical and electronic equipment assemblers"
  },
  {
    "code" : "Electrical-and-electronic-trades-workers",
    "display" : "Electrical and electronic trades workers"
  },
  {
    "code" : "Electrical-engineering-technicians",
    "display" : "Electrical engineering technicians"
  },
  {
    "code" : "Electrical-engineers",
    "display" : "Electrical engineers"
  },
  {
    "code" : "Electrical-equipment-installers-and-repairers",
    "display" : "Electrical equipment installers and repairers"
  },
  {
    "code" : "Electrical-line-installers-and-repairers",
    "display" : "Electrical line installers and repairers"
  },
  {
    "code" : "Electrical-mechanics-and-fitters",
    "display" : "Electrical mechanics and fitters"
  },
  {
    "code" : "Electronics-and-telecommunications-installers-and-repairers",
    "display" : "Electronics and telecommunications installers and repairers"
  },
  {
    "code" : "Electronics-engineering-technicians",
    "display" : "Electronics engineering technicians"
  },
  {
    "code" : "Electronics-engineers",
    "display" : "Electronics engineers"
  },
  {
    "code" : "Electronics-mechanics-and-servicers",
    "display" : "Electronics mechanics and servicers"
  },
  {
    "code" : "Electrotechnology-engineers",
    "display" : "Electrotechnology engineers"
  },
  {
    "code" : "Elementary-occupations",
    "display" : "Elementary occupations"
  },
  {
    "code" : "Elementary-workers-not-elsewhere-classified",
    "display" : "Elementary workers not elsewhere classified"
  },
  {
    "code" : "Employment-agents-and-contractors",
    "display" : "Employment agents and contractors"
  },
  {
    "code" : "ENGINEER",
    "display" : "ENGINEER"
  },
  {
    "code" : "Engineering-professionals-excluding-electrotechnology",
    "display" : "Engineering professionals (excluding electrotechnology)"
  },
  {
    "code" : "Engineering-professionals-not-elsewhere-classified",
    "display" : "Engineering professionals not elsewhere classified"
  },
  {
    "code" : "Enquiry-clerks",
    "display" : "Enquiry clerks"
  },
  {
    "code" : "Environmental-and-occupational-health-and-hygiene-professionals",
    "display" : "Environmental and occupational health and hygiene professionals"
  },
  {
    "code" : "Environmental-and-occupational-health-inspectors-and-associates",
    "display" : "Environmental and occupational health inspectors and associates"
  },
  {
    "code" : "Environmental-engineers",
    "display" : "Environmental engineers"
  },
  {
    "code" : "Environmental-protection-professionals",
    "display" : "Environmental protection professionals"
  },
  {
    "code" : "FARMER",
    "display" : "FARMER"
  },
  {
    "code" : "Farming-forestry-and-fisheries-advisers",
    "display" : "Farming, forestry and fisheries advisers"
  },
  {
    "code" : "Fashion-and-other-models",
    "display" : "Fashion and other models"
  },
  {
    "code" : "Fast-food-preparers",
    "display" : "Fast food preparers"
  },
  {
    "code" : "Fibre-preparing-spinning-and-winding-machine-operators",
    "display" : "Fibre preparing, spinning and winding machine operators"
  },
  {
    "code" : "Field-crop-and-vegetable-growers",
    "display" : "Field crop and vegetable growers"
  },
  {
    "code" : "Filing-and-copying-clerks",
    "display" : "Filing and copying clerks"
  },
  {
    "code" : "Film-stage-and-related-directors-and-producers",
    "display" : "Film, stage and related directors and producers"
  },
  {
    "code" : "Finance-managers",
    "display" : "Finance managers"
  },
  {
    "code" : "Finance-professionals",
    "display" : "Finance professionals"
  },
  {
    "code" : "Financial-analysts",
    "display" : "Financial analysts"
  },
  {
    "code" : "Financial-and-insurance-services-branch-managers",
    "display" : "Financial and insurance services branch managers"
  },
  {
    "code" : "Financial-and-investment-advisers",
    "display" : "Financial and investment advisers"
  },
  {
    "code" : "Financial-and-mathematical-associate-professionals",
    "display" : "Financial and mathematical associate professionals"
  },
  {
    "code" : "Fire-fighters",
    "display" : "Fire-fighters"
  },
  {
    "code" : "Fishery-and-aquaculture-labourers",
    "display" : "Fishery and aquaculture labourers"
  },
  {
    "code" : "Fishery-workers-hunters-and-trappers",
    "display" : "Fishery workers, hunters and trappers"
  },
  {
    "code" : "Fitness-and-recreation-instructors-and-program-leaders",
    "display" : "Fitness and recreation instructors and program leaders"
  },
  {
    "code" : "Floor-layers-and-tile-setters",
    "display" : "Floor layers and tile setters"
  },
  {
    "code" : "Food-and-beverage-tasters-and-graders",
    "display" : "Food and beverage tasters and graders"
  },
  {
    "code" : "Food-and-related-products-machine-operators",
    "display" : "Food and related products machine operators"
  },
  {
    "code" : "Food-preparation-assistants",
    "display" : "Food preparation assistants"
  },
  {
    "code" : "Food-processing-and-related-trades-workers",
    "display" : "Food processing and related trades workers"
  },
  {
    "code" : "Food-processing-wood-working-garment-and-other-craft-and-related-trades-workers",
    "display" : "Food processing, wood working, garment and other craft and related trades workers"
  },
  {
    "code" : "Food-service-counter-attendants",
    "display" : "Food service counter attendants"
  },
  {
    "code" : "Forestry-and-related-workers",
    "display" : "Forestry and related workers"
  },
  {
    "code" : "Forestry-labourers",
    "display" : "Forestry labourers"
  },
  {
    "code" : "Forestry-technicians",
    "display" : "Forestry technicians"
  },
  {
    "code" : "Freight-handlers",
    "display" : "Freight handlers"
  },
  {
    "code" : "Fruit-vegetable-and-related-preservers",
    "display" : "Fruit, vegetable and related preservers"
  },
  {
    "code" : "Fumigators-and-other-pest-and-weed-controllers",
    "display" : "Fumigators and other pest and weed controllers"
  },
  {
    "code" : "Fur-and-leather-preparing-machine-operators",
    "display" : "Fur and leather preparing machine operators"
  },
  {
    "code" : "Gallery-museum-and-library-technicians",
    "display" : "Gallery, museum and library technicians"
  },
  {
    "code" : "Garbage-and-recycling-collectors",
    "display" : "Garbage and recycling collectors"
  },
  {
    "code" : "Garden-and-horticultural-labourers",
    "display" : "Garden and horticultural labourers"
  },
  {
    "code" : "Gardeners-horticultural-and-nursery-growers",
    "display" : "Gardeners, horticultural and nursery growers"
  },
  {
    "code" : "Garment-and-related-pattern-makers-and-cutters",
    "display" : "Garment and related pattern-makers and cutters"
  },
  {
    "code" : "Garment-and-related-trades-workers",
    "display" : "Garment and related trades workers"
  },
  {
    "code" : "General-and-keyboard-clerks",
    "display" : "General and keyboard clerks"
  },
  {
    "code" : "General-office-clerks",
    "display" : "General office clerks"
  },
  {
    "code" : "Generalist-medical-practitioners",
    "display" : "Generalist medical practitioners"
  },
  {
    "code" : "Geologists-and-geophysicists",
    "display" : "Geologists and geophysicists"
  },
  {
    "code" : "Glass-and-ceramics-plant-operators",
    "display" : "Glass and ceramics plant operators"
  },
  {
    "code" : "Glass-makers-cutters-grinders-and-finishers",
    "display" : "Glass makers, cutters, grinders and finishers"
  },
  {
    "code" : "Glaziers",
    "display" : "Glaziers"
  },
  {
    "code" : "Government-licensing-officials",
    "display" : "Government licensing officials"
  },
  {
    "code" : "Government-social-benefits-officials",
    "display" : "Government social benefits officials"
  },
  {
    "code" : "Government-tax-and-excise-officials",
    "display" : "Government tax and excise officials"
  },
  {
    "code" : "Graphic-and-multimedia-designers",
    "display" : "Graphic and multimedia designers"
  },
  {
    "code" : "HAIRDRESSER",
    "display" : "HAIRDRESSER"
  },
  {
    "code" : "Hairdressers",
    "display" : "Hairdressers"
  },
  {
    "code" : "Hairdressers-beauticians-and-related-workers",
    "display" : "Hairdressers, beauticians and related workers"
  },
  {
    "code" : "Hand-and-pedal-vehicle-drivers",
    "display" : "Hand and pedal vehicle drivers"
  },
  {
    "code" : "Hand-launderers-and-pressers",
    "display" : "Hand launderers and pressers"
  },
  {
    "code" : "Hand-packers",
    "display" : "Hand packers"
  },
  {
    "code" : "Handicraft-and-printing-workers",
    "display" : "Handicraft and printing workers"
  },
  {
    "code" : "Handicraft-workers",
    "display" : "Handicraft workers"
  },
  {
    "code" : "Handicraft-workers-in-textile-leather-and-related-materials",
    "display" : "Handicraft workers in textile, leather and related materials"
  },
  {
    "code" : "Handicraft-workers-in-wood-basketry-and-related-materials",
    "display" : "Handicraft workers in wood, basketry and related materials"
  },
  {
    "code" : "Handicraft-workers-not-elsewhere-classified",
    "display" : "Handicraft workers not elsewhere classified"
  },
  {
    "code" : "Health-associate-professionals",
    "display" : "Health associate professionals"
  },
  {
    "code" : "Health-associate-professionals-not-elsewhere-classified",
    "display" : "Health associate professionals not elsewhere classified"
  },
  {
    "code" : "Health-care-assistants",
    "display" : "Health care assistants"
  },
  {
    "code" : "Health-professionals",
    "display" : "Health professionals"
  },
  {
    "code" : "Health-professionals-not-elsewhere-classified",
    "display" : "Health professionals not elsewhere classified"
  },
  {
    "code" : "Health-services-managers",
    "display" : "Health services managers"
  },
  {
    "code" : "Heavy-truck-and-bus-drivers",
    "display" : "Heavy truck and bus drivers"
  },
  {
    "code" : "Heavy-truck-and-lorry-drivers",
    "display" : "Heavy truck and lorry drivers"
  },
  {
    "code" : "Home-based-personal-care-workers",
    "display" : "Home-based personal care workers"
  },
  {
    "code" : "Hospitality-retail-and-other-services-managers",
    "display" : "Hospitality, retail and other services managers"
  },
  {
    "code" : "Hotel-and-restaurant-managers",
    "display" : "Hotel and restaurant managers"
  },
  {
    "code" : "Hotel-managers",
    "display" : "Hotel managers"
  },
  {
    "code" : "Hotel-receptionists",
    "display" : "Hotel receptionists"
  },
  {
    "code" : "House-builders",
    "display" : "House builders"
  },
  {
    "code" : "HOUSEKEEPER",
    "display" : "HOUSEKEEPER"
  },
  {
    "code" : "HOUSEWIFE",
    "display" : "HOUSEWIFE"
  },
  {
    "code" : "Human-resource-managers",
    "display" : "Human resource managers"
  },
  {
    "code" : "Hunters-and-trappers",
    "display" : "Hunters and trappers"
  },
  {
    "code" : "Incinerator-and-water-treatment-plant-operators",
    "display" : "Incinerator and water treatment plant operators"
  },
  {
    "code" : "Industrial-and-production-engineers",
    "display" : "Industrial and production engineers"
  },
  {
    "code" : "Information-and-communications-technicians",
    "display" : "Information and communications technicians"
  },
  {
    "code" : "Information-and-communications-technology-installers-and-servicers",
    "display" : "Information and communications technology installers and servicers"
  },
  {
    "code" : "Information-and-communications-technology-operations-and-user-support-technicians",
    "display" : "Information and communications technology operations and user support technicians"
  },
  {
    "code" : "Information-and-communications-technology-operations-technicians",
    "display" : "Information and communications technology operations technicians"
  },
  {
    "code" : "Information-and-communications-technology-professionals",
    "display" : "Information and communications technology professionals"
  },
  {
    "code" : "Information-and-communications-technology-sales-professionals",
    "display" : "Information and communications technology sales professionals"
  },
  {
    "code" : "Information-and-communications-technology-service-managers",
    "display" : "Information and communications technology service managers"
  },
  {
    "code" : "Information-and-communications-technology-user-support-technicians",
    "display" : "Information and communications technology user support technicians"
  },
  {
    "code" : "Information-technology-trainers",
    "display" : "Information technology trainers"
  },
  {
    "code" : "Inland-and-coastal-waters-fishery-workers",
    "display" : "Inland and coastal waters fishery workers"
  },
  {
    "code" : "Insulation-workers",
    "display" : "Insulation workers"
  },
  {
    "code" : "Insurance-representatives",
    "display" : "Insurance representatives"
  },
  {
    "code" : "Interior-designers-and-decorators",
    "display" : "Interior designers and decorators"
  },
  {
    "code" : "Jewellery-and-precious-metal-workers",
    "display" : "Jewellery and precious-metal workers"
  },
  {
    "code" : "Journalists",
    "display" : "Journalists"
  },
  {
    "code" : "Judges",
    "display" : "Judges"
  },
  {
    "code" : "Keyboard-operators",
    "display" : "Keyboard operators"
  },
  {
    "code" : "Kitchen-helpers",
    "display" : "Kitchen helpers"
  },
  {
    "code" : "LABORER",
    "display" : "LABORER"
  },
  {
    "code" : "Labourers-in-mining-construction-manufacturing-and-transport",
    "display" : "Labourers in mining, construction, manufacturing and transport"
  },
  {
    "code" : "Landscape-architects",
    "display" : "Landscape architects"
  },
  {
    "code" : "Laundry-machine-operators",
    "display" : "Laundry machine operators"
  },
  {
    "code" : "LAWYER",
    "display" : "LAWYER"
  },
  {
    "code" : "Lawyers",
    "display" : "Lawyers"
  },
  {
    "code" : "Legal-professionals",
    "display" : "Legal professionals"
  },
  {
    "code" : "Legal-professionals-not-elsewhere-classified",
    "display" : "Legal professionals not elsewhere classified"
  },
  {
    "code" : "Legal-secretaries",
    "display" : "Legal secretaries"
  },
  {
    "code" : "Legal-social-and-cultural-professionals",
    "display" : "Legal, social and cultural professionals"
  },
  {
    "code" : "Legal-social-and-religious-associate-professionals",
    "display" : "Legal, social and religious associate professionals"
  },
  {
    "code" : "Legal-social-cultural-and-related-associate-professionals",
    "display" : "Legal, social, cultural and related associate professionals"
  },
  {
    "code" : "Legislators",
    "display" : "Legislators"
  },
  {
    "code" : "Legislators-and-senior-officials",
    "display" : "Legislators and senior officials"
  },
  {
    "code" : "Librarians-and-related-information-professionals",
    "display" : "Librarians and related information professionals"
  },
  {
    "code" : "Librarians-archivists-and-curators",
    "display" : "Librarians, archivists and curators"
  },
  {
    "code" : "Library-clerks",
    "display" : "Library clerks"
  },
  {
    "code" : "Life-science-professionals",
    "display" : "Life science professionals"
  },
  {
    "code" : "Life-science-technicians-excluding-medical",
    "display" : "Life science technicians (excluding medical)"
  },
  {
    "code" : "Life-science-technicians-and-related-associate-professionals",
    "display" : "Life science technicians and related associate professionals"
  },
  {
    "code" : "Lifting-truck-operators",
    "display" : "Lifting truck operators"
  },
  {
    "code" : "Livestock-and-dairy-producers",
    "display" : "Livestock and dairy producers"
  },
  {
    "code" : "Livestock-farm-labourers",
    "display" : "Livestock farm labourers"
  },
  {
    "code" : "Locomotive-engine-drivers",
    "display" : "Locomotive engine drivers"
  },
  {
    "code" : "Locomotive-engine-drivers-and-related-workers",
    "display" : "Locomotive engine drivers and related workers"
  },
  {
    "code" : "Machinery-mechanics-and-repairers",
    "display" : "Machinery mechanics and repairers"
  },
  {
    "code" : "Mail-carriers-and-sorting-clerks",
    "display" : "Mail carriers and sorting clerks"
  },
  {
    "code" : "Management-and-organization-analysts",
    "display" : "Management and organization analysts"
  },
  {
    "code" : "Managing-directors-and-chief-executives",
    "display" : "Managing directors and chief executives"
  },
  {
    "code" : "Manufacturing-labourers",
    "display" : "Manufacturing labourers"
  },
  {
    "code" : "Manufacturing-labourers-not-elsewhere-classified",
    "display" : "Manufacturing labourers not elsewhere classified"
  },
  {
    "code" : "Manufacturing-managers",
    "display" : "Manufacturing managers"
  },
  {
    "code" : "Manufacturing-supervisors",
    "display" : "Manufacturing supervisors"
  },
  {
    "code" : "Manufacturing-mining-construction-and-distribution-managers",
    "display" : "Manufacturing, mining, construction, and distribution managers"
  },
  {
    "code" : "Market-oriented-skilled-agricultural-workers",
    "display" : "Market-oriented skilled agricultural workers"
  },
  {
    "code" : "Market-oriented-skilled-forestry-fishery-and-hunting-workers",
    "display" : "Market-oriented skilled forestry, fishery and hunting workers"
  },
  {
    "code" : "Market-gardeners-and-crop-growers",
    "display" : "Market gardeners and crop growers"
  },
  {
    "code" : "MARKETEER",
    "display" : "MARKETEER"
  },
  {
    "code" : "Material-recording-and-transport-clerks",
    "display" : "Material-recording and transport clerks"
  },
  {
    "code" : "Mathematicians-actuaries-and-statisticians",
    "display" : "Mathematicians, actuaries and statisticians"
  },
  {
    "code" : "Mechanical-engineering-technicians",
    "display" : "Mechanical engineering technicians"
  },
  {
    "code" : "Mechanical-engineers",
    "display" : "Mechanical engineers"
  },
  {
    "code" : "Mechanical-machinery-assemblers",
    "display" : "Mechanical machinery assemblers"
  },
  {
    "code" : "Medical-and-dental-prosthetic-technicians",
    "display" : "Medical and dental prosthetic technicians"
  },
  {
    "code" : "Medical-and-pathology-laboratory-technicians",
    "display" : "Medical and pathology laboratory technicians"
  },
  {
    "code" : "Medical-and-pharmaceutical-technicians",
    "display" : "Medical and pharmaceutical technicians"
  },
  {
    "code" : "Medical-assistants",
    "display" : "Medical assistants"
  },
  {
    "code" : "Medical-doctors",
    "display" : "Medical doctors"
  },
  {
    "code" : "Medical-imaging-and-therapeutic-equipment-technicians",
    "display" : "Medical imaging and therapeutic equipment technicians"
  },
  {
    "code" : "Medical-records-and-health-information-technicians",
    "display" : "Medical records and health information technicians"
  },
  {
    "code" : "Medical-secretaries",
    "display" : "Medical secretaries"
  },
  {
    "code" : "Messengers-package-deliverers-and-luggage-porters",
    "display" : "Messengers, package deliverers and luggage porters"
  },
  {
    "code" : "Metal-finishing-plating-and-coating-machine-operators",
    "display" : "Metal finishing, plating and coating machine operators"
  },
  {
    "code" : "Metal-moulders-and-coremakers",
    "display" : "Metal moulders and coremakers"
  },
  {
    "code" : "Metal-polishers-wheel-grinders-and-tool-sharpeners",
    "display" : "Metal polishers, wheel grinders and tool sharpeners"
  },
  {
    "code" : "Metal-processing-and-finishing-plant-operators",
    "display" : "Metal processing and finishing plant operators"
  },
  {
    "code" : "Metal-processing-plant-operators",
    "display" : "Metal processing plant operators"
  },
  {
    "code" : "Metal-production-process-controllers",
    "display" : "Metal production process controllers"
  },
  {
    "code" : "Metal-working-machine-tool-setters-and-operators",
    "display" : "Metal working machine tool setters and operators"
  },
  {
    "code" : "Metal-machinery-and-related-trades-workers",
    "display" : "Metal, machinery and related trades workers"
  },
  {
    "code" : "Meteorologists",
    "display" : "Meteorologists"
  },
  {
    "code" : "Meter-readers-and-vending-machine-collectors",
    "display" : "Meter readers and vending-machine collectors"
  },
  {
    "code" : "Midwifery-associate-professionals",
    "display" : "Midwifery associate professionals"
  },
  {
    "code" : "Midwifery-professionals",
    "display" : "Midwifery professionals"
  },
  {
    "code" : "Mineral-and-stone-processing-plant-operators",
    "display" : "Mineral and stone processing plant operators"
  },
  {
    "code" : "Miners-and-quarriers",
    "display" : "Miners and quarriers"
  },
  {
    "code" : "Mining-and-construction-labourers",
    "display" : "Mining and construction labourers"
  },
  {
    "code" : "Mining-and-metallurgical-technicians",
    "display" : "Mining and metallurgical technicians"
  },
  {
    "code" : "Mining-and-mineral-processing-plant-operators",
    "display" : "Mining and mineral processing plant operators"
  },
  {
    "code" : "Mining-and-quarrying-labourers",
    "display" : "Mining and quarrying labourers"
  },
  {
    "code" : "Mining-engineers-metallurgists-and-related-professionals",
    "display" : "Mining engineers, metallurgists and related professionals"
  },
  {
    "code" : "Mining-managers",
    "display" : "Mining managers"
  },
  {
    "code" : "Mining-supervisors",
    "display" : "Mining supervisors"
  },
  {
    "code" : "Mining-manufacturing-and-construction-supervisors",
    "display" : "Mining, manufacturing and construction supervisors"
  },
  {
    "code" : "Mixed-crop-and-animal-producers",
    "display" : "Mixed crop and animal producers"
  },
  {
    "code" : "Mixed-crop-and-livestock-farm-labourers",
    "display" : "Mixed crop and livestock farm labourers"
  },
  {
    "code" : "Mixed-crop-growers",
    "display" : "Mixed crop growers"
  },
  {
    "code" : "Mobile-farm-and-forestry-plant-operators",
    "display" : "Mobile farm and forestry plant operators"
  },
  {
    "code" : "Mobile-plant-operators",
    "display" : "Mobile plant operators"
  },
  {
    "code" : "Motor-vehicle-mechanics-and-repairers",
    "display" : "Motor vehicle mechanics and repairers"
  },
  {
    "code" : "Motorcycle-drivers",
    "display" : "Motorcycle drivers"
  },
  {
    "code" : "Musical-instrument-makers-and-tuners",
    "display" : "Musical instrument makers and tuners"
  },
  {
    "code" : "Musicians-singers-and-composers",
    "display" : "Musicians, singers and composers"
  },
  {
    "code" : "Non-commissioned-armed-forces-officers",
    "display" : "Non-commissioned armed forces officers"
  },
  {
    "code" : "Numerical-and-material-recording-clerks",
    "display" : "Numerical and material recording clerks"
  },
  {
    "code" : "Numerical-clerks",
    "display" : "Numerical clerks"
  },
  {
    "code" : "NURSE",
    "display" : "NURSE"
  },
  {
    "code" : "Nursing-and-midwifery-associate-professionals",
    "display" : "Nursing and midwifery associate professionals"
  },
  {
    "code" : "Nursing-and-midwifery-professionals",
    "display" : "Nursing and midwifery professionals"
  },
  {
    "code" : "Nursing-associate-professionals",
    "display" : "Nursing associate professionals"
  },
  {
    "code" : "Nursing-professionals",
    "display" : "Nursing professionals"
  },
  {
    "code" : "Odd-job-persons",
    "display" : "Odd job persons"
  },
  {
    "code" : "Office-supervisors",
    "display" : "Office supervisors"
  },
  {
    "code" : "Optometrists-and-ophthalmic-opticians",
    "display" : "Optometrists and ophthalmic opticians"
  },
  {
    "code" : "OTHER",
    "display" : "OTHER"
  },
  {
    "code" : "Other-artistic-and-cultural-associate-professionals",
    "display" : "Other artistic and cultural associate professionals"
  },
  {
    "code" : "Other-arts-teachers",
    "display" : "Other arts teachers"
  },
  {
    "code" : "Other-cleaning-workers",
    "display" : "Other cleaning workers"
  },
  {
    "code" : "Other-clerical-support-workers",
    "display" : "Other clerical support workers"
  },
  {
    "code" : "Other-craft-and-related-workers",
    "display" : "Other craft and related workers"
  },
  {
    "code" : "Other-elementary-workers",
    "display" : "Other elementary workers"
  },
  {
    "code" : "Other-health-associate-professionals",
    "display" : "Other health associate professionals"
  },
  {
    "code" : "Other-health-professionals",
    "display" : "Other health professionals"
  },
  {
    "code" : "Other-language-teachers",
    "display" : "Other language teachers"
  },
  {
    "code" : "Other-music-teachers",
    "display" : "Other music teachers"
  },
  {
    "code" : "Other-personal-services-workers",
    "display" : "Other personal services workers"
  },
  {
    "code" : "Other-sales-workers",
    "display" : "Other sales workers"
  },
  {
    "code" : "Other-services-managers",
    "display" : "Other services managers"
  },
  {
    "code" : "Other-stationary-plant-and-machine-operators",
    "display" : "Other stationary plant and machine operators"
  },
  {
    "code" : "Other-teaching-professionals",
    "display" : "Other teaching professionals"
  },
  {
    "code" : "Packing-bottling-and-labelling-machine-operators",
    "display" : "Packing, bottling and labelling machine operators"
  },
  {
    "code" : "Painters-and-related-workers",
    "display" : "Painters and related workers"
  },
  {
    "code" : "Painters-building-structure-cleaners-and-related-trades-workers",
    "display" : "Painters, building structure cleaners and related trades workers"
  },
  {
    "code" : "Paper-products-machine-operators",
    "display" : "Paper products machine operators"
  },
  {
    "code" : "Paramedical-practitioners",
    "display" : "Paramedical practitioners"
  },
  {
    "code" : "Pawnbrokers-and-money-lenders",
    "display" : "Pawnbrokers and money-lenders"
  },
  {
    "code" : "Payroll-clerks",
    "display" : "Payroll clerks"
  },
  {
    "code" : "Pelt-dressers-tanners-and-fellmongers",
    "display" : "Pelt dressers, tanners and fellmongers"
  },
  {
    "code" : "Personal-care-workers",
    "display" : "Personal care workers"
  },
  {
    "code" : "Personal-care-workers-in-health-services",
    "display" : "Personal care workers in health services"
  },
  {
    "code" : "Personal-care-workers-in-health-services-not-elsewhere-classified",
    "display" : "Personal care workers in health services not elsewhere classified"
  },
  {
    "code" : "Personal-service-workers",
    "display" : "Personal service workers"
  },
  {
    "code" : "Personal-services-workers-not-elsewhere-classified",
    "display" : "Personal services workers not elsewhere classified"
  },
  {
    "code" : "Personnel-and-careers-professionals",
    "display" : "Personnel and careers professionals"
  },
  {
    "code" : "Personnel-clerks",
    "display" : "Personnel clerks"
  },
  {
    "code" : "Pet-groomers-and-animal-care-workers",
    "display" : "Pet groomers and animal care workers"
  },
  {
    "code" : "Petroleum-and-natural-gas-refining-plant-operators",
    "display" : "Petroleum and natural gas refining plant operators"
  },
  {
    "code" : "Pharmaceutical-technicians-and-assistants",
    "display" : "Pharmaceutical technicians and assistants"
  },
  {
    "code" : "Pharmacists",
    "display" : "Pharmacists"
  },
  {
    "code" : "Philosophers-historians-and-political-scientists",
    "display" : "Philosophers, historians and political scientists"
  },
  {
    "code" : "Photographers",
    "display" : "Photographers"
  },
  {
    "code" : "Photographic-products-machine-operators",
    "display" : "Photographic products machine operators"
  },
  {
    "code" : "Physical-and-earth-science-professionals",
    "display" : "Physical and earth science professionals"
  },
  {
    "code" : "Physical-and-engineering-science-technicians",
    "display" : "Physical and engineering science technicians"
  },
  {
    "code" : "Physical-and-engineering-science-technicians-not-elsewhere-classified",
    "display" : "Physical and engineering science technicians not elsewhere classified"
  },
  {
    "code" : "Physicists-and-astronomers",
    "display" : "Physicists and astronomers"
  },
  {
    "code" : "Physiotherapists",
    "display" : "Physiotherapists"
  },
  {
    "code" : "Physiotherapy-technicians-and-assistants",
    "display" : "Physiotherapy technicians and assistants"
  },
  {
    "code" : "Plant-and-machine-operators-and-assemblers",
    "display" : "Plant and machine operators, and assemblers"
  },
  {
    "code" : "Plasterers",
    "display" : "Plasterers"
  },
  {
    "code" : "Plastic-products-machine-operators",
    "display" : "Plastic products machine operators"
  },
  {
    "code" : "Plumbers-and-pipe-fitters",
    "display" : "Plumbers and pipe fitters"
  },
  {
    "code" : "POLICE",
    "display" : "POLICE"
  },
  {
    "code" : "Police-inspectors-and-detectives",
    "display" : "Police inspectors and detectives"
  },
  {
    "code" : "Police-officers",
    "display" : "Police officers"
  },
  {
    "code" : "Policy-administration-professionals",
    "display" : "Policy administration professionals"
  },
  {
    "code" : "Policy-and-planning-managers",
    "display" : "Policy and planning managers"
  },
  {
    "code" : "Potters-and-related-workers",
    "display" : "Potters and related workers"
  },
  {
    "code" : "Poultry-producers",
    "display" : "Poultry producers"
  },
  {
    "code" : "Power-production-plant-operators",
    "display" : "Power production plant operators"
  },
  {
    "code" : "Pre-press-technicians",
    "display" : "Pre-press technicians"
  },
  {
    "code" : "Precision-instrument-makers-and-repairers",
    "display" : "Precision-instrument makers and repairers"
  },
  {
    "code" : "Primary-school-and-early-childhood-teachers",
    "display" : "Primary school and early childhood teachers"
  },
  {
    "code" : "Primary-school-teachers",
    "display" : "Primary school teachers"
  },
  {
    "code" : "Print-finishing-and-binding-workers",
    "display" : "Print finishing and binding workers"
  },
  {
    "code" : "Printers",
    "display" : "Printers"
  },
  {
    "code" : "Printing-trades-workers",
    "display" : "Printing trades workers"
  },
  {
    "code" : "Prison-guards",
    "display" : "Prison guards"
  },
  {
    "code" : "Process-control-technicians",
    "display" : "Process control technicians"
  },
  {
    "code" : "Process-control-technicians-not-elsewhere-classified",
    "display" : "Process control technicians not elsewhere classified"
  },
  {
    "code" : "Product-and-garment-designers",
    "display" : "Product and garment designers"
  },
  {
    "code" : "Product-graders-and-testers-excluding-foods-and-beverages",
    "display" : "Product graders and testers (excluding foods and beverages)"
  },
  {
    "code" : "Production-and-specialised-services-managers",
    "display" : "Production and specialised services managers"
  },
  {
    "code" : "Production-clerks",
    "display" : "Production clerks"
  },
  {
    "code" : "Production-managers-in-agriculture-forestry-and-fisheries",
    "display" : "Production managers in agriculture, forestry and fisheries"
  },
  {
    "code" : "Professional-services-managers",
    "display" : "Professional services managers"
  },
  {
    "code" : "Professional-services-managers-not-elsewhere-classified",
    "display" : "Professional services managers not elsewhere classified"
  },
  {
    "code" : "Professionals",
    "display" : "Professionals"
  },
  {
    "code" : "Protective-services-workers",
    "display" : "Protective services workers"
  },
  {
    "code" : "Protective-services-workers-not-elsewhere-classified",
    "display" : "Protective services workers not elsewhere classified"
  },
  {
    "code" : "Psychologists",
    "display" : "Psychologists"
  },
  {
    "code" : "Public-relations-professionals",
    "display" : "Public relations professionals"
  },
  {
    "code" : "Pulp-and-papermaking-plant-operators",
    "display" : "Pulp and papermaking plant operators"
  },
  {
    "code" : "Railway-brake-signal-and-switch-operators",
    "display" : "Railway brake, signal and switch operators"
  },
  {
    "code" : "Real-estate-agents-and-property-managers",
    "display" : "Real estate agents and property managers"
  },
  {
    "code" : "Receptionists-general",
    "display" : "Receptionists (general)"
  },
  {
    "code" : "Refuse-sorters",
    "display" : "Refuse sorters"
  },
  {
    "code" : "Refuse-workers",
    "display" : "Refuse workers"
  },
  {
    "code" : "Refuse-workers-and-other-elementary-workers",
    "display" : "Refuse workers and other elementary workers"
  },
  {
    "code" : "Regulatory-government-associate-professionals",
    "display" : "Regulatory government associate professionals"
  },
  {
    "code" : "Regulatory-government-associate-professionals-not-elsewhere-classified",
    "display" : "Regulatory government associate professionals not elsewhere classified"
  },
  {
    "code" : "Religious-associate-professionals",
    "display" : "Religious associate professionals"
  },
  {
    "code" : "Religious-professionals",
    "display" : "Religious professionals"
  },
  {
    "code" : "Research-and-development-managers",
    "display" : "Research and development managers"
  },
  {
    "code" : "Restaurant-managers",
    "display" : "Restaurant managers"
  },
  {
    "code" : "Retail-and-wholesale-trade-managers",
    "display" : "Retail and wholesale trade managers"
  },
  {
    "code" : "Riggers-and-cable-splicers",
    "display" : "Riggers and cable splicers"
  },
  {
    "code" : "Roofers",
    "display" : "Roofers"
  },
  {
    "code" : "Rubber-products-machine-operators",
    "display" : "Rubber products machine operators"
  },
  {
    "code" : "Rubber-plastic-and-paper-products-machine-operators",
    "display" : "Rubber, plastic and paper products machine operators"
  },
  {
    "code" : "Sales-and-marketing-managers",
    "display" : "Sales and marketing managers"
  },
  {
    "code" : "Sales-and-purchasing-agents-and-brokers",
    "display" : "Sales and purchasing agents and brokers"
  },
  {
    "code" : "Sales-demonstrators",
    "display" : "Sales demonstrators"
  },
  {
    "code" : "Sales-workers",
    "display" : "Sales workers"
  },
  {
    "code" : "Sales-workers-not-elsewhere-classified",
    "display" : "Sales workers not elsewhere classified"
  },
  {
    "code" : "Sales-marketing-and-development-managers",
    "display" : "Sales, marketing and development managers"
  },
  {
    "code" : "Sales-marketing-and-public-relations-professionals",
    "display" : "Sales, marketing and public relations professionals"
  },
  {
    "code" : "Science-and-engineering-associate-professionals",
    "display" : "Science and engineering associate professionals"
  },
  {
    "code" : "Science-and-engineering-professionals",
    "display" : "Science and engineering professionals"
  },
  {
    "code" : "Scribes-and-related-workers",
    "display" : "Scribes and related workers"
  },
  {
    "code" : "Secondary-education-teachers",
    "display" : "Secondary education teachers"
  },
  {
    "code" : "Secretaries-general",
    "display" : "Secretaries (general)"
  },
  {
    "code" : "Securities-and-finance-dealers-and-brokers",
    "display" : "Securities and finance dealers and brokers"
  },
  {
    "code" : "Security-guards",
    "display" : "Security guards"
  },
  {
    "code" : "Senior-government-officials",
    "display" : "Senior government officials"
  },
  {
    "code" : "Senior-officials-of-special-interest-organizations",
    "display" : "Senior officials of special-interest organizations"
  },
  {
    "code" : "Service-and-sales-workers",
    "display" : "Service and sales workers"
  },
  {
    "code" : "Service-station-attendants",
    "display" : "Service station attendants"
  },
  {
    "code" : "Services-managers-not-elsewhere-classified",
    "display" : "Services managers not elsewhere classified"
  },
  {
    "code" : "Sewing-machine-operators",
    "display" : "Sewing machine operators"
  },
  {
    "code" : "Sewing-embroidery-and-related-workers",
    "display" : "Sewing, embroidery and related workers"
  },
  {
    "code" : "Sheet-metal-workers",
    "display" : "Sheet-metal workers"
  },
  {
    "code" : "Sheet-and-structural-metal-workers-moulders-and-welders-and-related-workers",
    "display" : "Sheet and structural metal workers, moulders and welders, and related workers"
  },
  {
    "code" : "Shelf-fillers",
    "display" : "Shelf fillers"
  },
  {
    "code" : "Ship-and-aircraft-controllers-and-technicians",
    "display" : "Ship and aircraft controllers and technicians"
  },
  {
    "code" : "Ships'-deck-crews-and-related-workers",
    "display" : "Ships' deck crews and related workers"
  },
  {
    "code" : "Ships'-deck-officers-and-pilots",
    "display" : "Ships' deck officers and pilots"
  },
  {
    "code" : "Ships'-engineers",
    "display" : "Ships' engineers"
  },
  {
    "code" : "Shoemakers-and-related-workers",
    "display" : "Shoemakers and related workers"
  },
  {
    "code" : "Shoemaking-and-related-machine-operators",
    "display" : "Shoemaking and related machine operators"
  },
  {
    "code" : "Shop-keepers",
    "display" : "Shop keepers"
  },
  {
    "code" : "Shop-sales-assistants",
    "display" : "Shop sales assistants"
  },
  {
    "code" : "Shop-salespersons",
    "display" : "Shop salespersons"
  },
  {
    "code" : "Shop-supervisors",
    "display" : "Shop supervisors"
  },
  {
    "code" : "Shotfirers-and-blasters",
    "display" : "Shotfirers and blasters"
  },
  {
    "code" : "Sign-writers-decorative-painters-engravers-and-etchers",
    "display" : "Sign writers, decorative painters, engravers and etchers"
  },
  {
    "code" : "Skilled-agricultural-forestry-and-fishery-workers",
    "display" : "Skilled agricultural, forestry and fishery workers"
  },
  {
    "code" : "Social-and-religious-professionals",
    "display" : "Social and religious professionals"
  },
  {
    "code" : "Social-welfare-managers",
    "display" : "Social welfare managers"
  },
  {
    "code" : "Social-work-and-counselling-professionals",
    "display" : "Social work and counselling professionals"
  },
  {
    "code" : "Social-work-associate-professionals",
    "display" : "Social work associate professionals"
  },
  {
    "code" : "Sociologists-anthropologists-and-related-professionals",
    "display" : "Sociologists, anthropologists and related professionals"
  },
  {
    "code" : "Software-and-applications-developers-and-analysts",
    "display" : "Software and applications developers and analysts"
  },
  {
    "code" : "Software-and-applications-developers-and-analysts-not-elsewhere-classified",
    "display" : "Software and applications developers and analysts not elsewhere classified"
  },
  {
    "code" : "Software-developers",
    "display" : "Software developers"
  },
  {
    "code" : "Special-needs-teachers",
    "display" : "Special needs teachers"
  },
  {
    "code" : "Specialist-medical-practitioners",
    "display" : "Specialist medical practitioners"
  },
  {
    "code" : "Sports-and-fitness-workers",
    "display" : "Sports and fitness workers"
  },
  {
    "code" : "Sports-coaches-instructors-and-officials",
    "display" : "Sports coaches, instructors and officials"
  },
  {
    "code" : "Sports-recreation-and-cultural-centre-managers",
    "display" : "Sports, recreation and cultural centre managers"
  },
  {
    "code" : "Spray-painters-and-varnishers",
    "display" : "Spray painters and varnishers"
  },
  {
    "code" : "Stall-and-market-salespersons",
    "display" : "Stall and market salespersons"
  },
  {
    "code" : "Stationary-plant-and-machine-operators",
    "display" : "Stationary plant and machine operators"
  },
  {
    "code" : "Stationary-plant-and-machine-operators-not-elsewhere-classified",
    "display" : "Stationary plant and machine operators not elsewhere classified"
  },
  {
    "code" : "Statistical-finance-and-insurance-clerks",
    "display" : "Statistical, finance and insurance clerks"
  },
  {
    "code" : "Statistical-mathematical-and-related-associate-professionals",
    "display" : "Statistical, mathematical and related associate professionals"
  },
  {
    "code" : "Steam-engine-and-boiler-operators",
    "display" : "Steam engine and boiler operators"
  },
  {
    "code" : "Stock-clerks",
    "display" : "Stock clerks"
  },
  {
    "code" : "Stonemasons-stone-cutters-splitters-and-carvers",
    "display" : "Stonemasons, stone cutters, splitters and carvers"
  },
  {
    "code" : "Street-and-market-salespersons",
    "display" : "Street and market salespersons"
  },
  {
    "code" : "Street-and-related-sales-and-service-workers",
    "display" : "Street and related sales and service workers"
  },
  {
    "code" : "Street-and-related-service-workers",
    "display" : "Street and related service workers"
  },
  {
    "code" : "Street-food-salespersons",
    "display" : "Street food salespersons"
  },
  {
    "code" : "Street-vendors-excluding-food",
    "display" : "Street vendors (excluding food)"
  },
  {
    "code" : "Structural-metal-preparers-and-erectors",
    "display" : "Structural-metal preparers and erectors"
  },
  {
    "code" : "Subsistence-crop-farmers",
    "display" : "Subsistence crop farmers"
  },
  {
    "code" : "Subsistence-farmers-fishers-hunters-and-gatherers",
    "display" : "Subsistence farmers, fishers, hunters and gatherers"
  },
  {
    "code" : "Subsistence-fishers-hunters-trappers-and-gatherers",
    "display" : "Subsistence fishers, hunters, trappers and gatherers"
  },
  {
    "code" : "Subsistence-livestock-farmers",
    "display" : "Subsistence livestock farmers"
  },
  {
    "code" : "Subsistence-mixed-crop-and-livestock-farmers",
    "display" : "Subsistence mixed crop and livestock farmers"
  },
  {
    "code" : "Supply-distribution-and-related-managers",
    "display" : "Supply, distribution and related managers"
  },
  {
    "code" : "Survey-and-market-research-interviewers",
    "display" : "Survey and market research interviewers"
  },
  {
    "code" : "Sweepers-and-related-labourers",
    "display" : "Sweepers and related labourers"
  },
  {
    "code" : "Systems-administrators",
    "display" : "Systems administrators"
  },
  {
    "code" : "Systems-analysts",
    "display" : "Systems analysts"
  },
  {
    "code" : "Tailors-dressmakers-furriers-and-hatters",
    "display" : "Tailors, dressmakers, furriers and hatters"
  },
  {
    "code" : "TEACHER",
    "display" : "TEACHER"
  },
  {
    "code" : "Teachers'-aides",
    "display" : "Teachers' aides"
  },
  {
    "code" : "Teaching-professionals",
    "display" : "Teaching professionals"
  },
  {
    "code" : "Teaching-professionals-not-elsewhere-classified",
    "display" : "Teaching professionals not elsewhere classified"
  },
  {
    "code" : "Technical-and-medical-sales-professionals-excluding-ICT",
    "display" : "Technical and medical sales professionals (excluding ICT)"
  },
  {
    "code" : "Technicians-and-associate-professionals",
    "display" : "Technicians and associate professionals"
  },
  {
    "code" : "Telecommunications-and-broadcasting-technicians",
    "display" : "Telecommunications and broadcasting technicians"
  },
  {
    "code" : "Telecommunications-engineering-technicians",
    "display" : "Telecommunications engineering technicians"
  },
  {
    "code" : "Telecommunications-engineers",
    "display" : "Telecommunications engineers"
  },
  {
    "code" : "Telephone-switchboard-operators",
    "display" : "Telephone switchboard operators"
  },
  {
    "code" : "Tellers-money-collectors-and-related-clerks",
    "display" : "Tellers, money collectors and related clerks"
  },
  {
    "code" : "Textile-fur-and-leather-products-machine-operators",
    "display" : "Textile, fur and leather products machine operators"
  },
  {
    "code" : "Textile-fur-and-leather-products-machine-operators-not-elsewhere-classified",
    "display" : "Textile, fur and leather products machine operators not elsewhere classified"
  },
  {
    "code" : "Tobacco-preparers-and-tobacco-products-makers",
    "display" : "Tobacco preparers and tobacco products makers"
  },
  {
    "code" : "Toolmakers-and-related-workers",
    "display" : "Toolmakers and related workers"
  },
  {
    "code" : "Town-and-traffic-planners",
    "display" : "Town and traffic planners"
  },
  {
    "code" : "Trade-brokers",
    "display" : "Trade brokers"
  },
  {
    "code" : "Traditional-and-complementary-medicine-associate-professionals",
    "display" : "Traditional and complementary medicine associate professionals"
  },
  {
    "code" : "Traditional-and-complementary-medicine-professionals",
    "display" : "Traditional and complementary medicine professionals"
  },
  {
    "code" : "Traditional-chiefs-and-heads-of-village",
    "display" : "Traditional chiefs and heads of village"
  },
  {
    "code" : "Training-and-staff-development-professionals",
    "display" : "Training and staff development professionals"
  },
  {
    "code" : "Translators-interpreters-and-other-linguists",
    "display" : "Translators, interpreters and other linguists"
  },
  {
    "code" : "Transport-and-storage-labourers",
    "display" : "Transport and storage labourers"
  },
  {
    "code" : "Transport-clerks",
    "display" : "Transport clerks"
  },
  {
    "code" : "Transport-conductors",
    "display" : "Transport conductors"
  },
  {
    "code" : "Travel-attendants-and-travel-stewards",
    "display" : "Travel attendants and travel stewards"
  },
  {
    "code" : "Travel-attendants-conductors-and-guides",
    "display" : "Travel attendants, conductors and guides"
  },
  {
    "code" : "Travel-consultants-and-clerks",
    "display" : "Travel consultants and clerks"
  },
  {
    "code" : "Travel-guides",
    "display" : "Travel guides"
  },
  {
    "code" : "Tree-and-shrub-crop-growers",
    "display" : "Tree and shrub crop growers"
  },
  {
    "code" : "Typists-and-word-processing-operators",
    "display" : "Typists and word processing operators"
  },
  {
    "code" : "Undertakers-and-embalmers",
    "display" : "Undertakers and embalmers"
  },
  {
    "code" : "Underwater-divers",
    "display" : "Underwater divers"
  },
  {
    "code" : "UNEMPLOYED",
    "display" : "UNEMPLOYED"
  },
  {
    "code" : "University-and-higher-education-teachers",
    "display" : "University and higher education teachers"
  },
  {
    "code" : "UNKNOWN",
    "display" : "UNKNOWN"
  },
  {
    "code" : "Upholsterers-and-related-workers",
    "display" : "Upholsterers and related workers"
  },
  {
    "code" : "Valuers-and-loss-assessors",
    "display" : "Valuers and loss assessors"
  },
  {
    "code" : "Vehicle-cleaners",
    "display" : "Vehicle cleaners"
  },
  {
    "code" : "Vehicle-window-laundry-and-other-hand-cleaning-workers",
    "display" : "Vehicle, window, laundry and other hand cleaning workers"
  },
  {
    "code" : "Veterinarians",
    "display" : "Veterinarians"
  },
  {
    "code" : "Veterinary-technicians-and-assistants",
    "display" : "Veterinary technicians and assistants"
  },
  {
    "code" : "Visual-artists",
    "display" : "Visual artists"
  },
  {
    "code" : "Vocational-education-teachers",
    "display" : "Vocational education teachers"
  },
  {
    "code" : "Waiters",
    "display" : "Waiters"
  },
  {
    "code" : "Waiters-and-bartenders",
    "display" : "Waiters and bartenders"
  },
  {
    "code" : "Water-and-firewood-collectors",
    "display" : "Water and firewood collectors"
  },
  {
    "code" : "Weaving-and-knitting-machine-operators",
    "display" : "Weaving and knitting machine operators"
  },
  {
    "code" : "Web-and-multimedia-developers",
    "display" : "Web and multimedia developers"
  },
  {
    "code" : "Web-technicians",
    "display" : "Web technicians"
  },
  {
    "code" : "Welders-and-flamecutters",
    "display" : "Welders and flamecutters"
  },
  {
    "code" : "Well-drillers-and-borers-and-related-workers",
    "display" : "Well drillers and borers and related workers"
  },
  {
    "code" : "Window-cleaners",
    "display" : "Window cleaners"
  },
  {
    "code" : "Wood-processing-and-papermaking-plant-operators",
    "display" : "Wood processing and papermaking plant operators"
  },
  {
    "code" : "Wood-processing-plant-operators",
    "display" : "Wood processing plant operators"
  },
  {
    "code" : "Wood-treaters",
    "display" : "Wood treaters"
  },
  {
    "code" : "Wood-treaters-cabinet-makers-and-related-trades-workers",
    "display" : "Wood treaters, cabinet-makers and related trades workers"
  },
  {
    "code" : "Woodworking-machine-tool-setters-and-operators",
    "display" : "Woodworking-machine tool setters and operators"
  }]
}

```
