# Target Population Category Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Target Population Category Codes**

## CodeSystem: Target Population Category Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivTargetPopulationCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.74 | |

 
Codes used for representing the patient's target population category 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivLocalConceptsVS](ValueSet-ng-hiv-local-concepts.md)
* [NgTargetPopulationCategoryVS](ValueSet-ng-target-population-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-target-population-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-target-population-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.74"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTargetPopulationCategoryCS",
  "title" : "Target Population Category Codes",
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
  "description" : "Codes used for representing the patient's target population category",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 14,
  "concept" : [{
    "code" : "General-Population",
    "display" : "General Population"
  },
  {
    "code" : "Prisoner",
    "display" : "Prisoner"
  },
  {
    "code" : "Children-Of-PLHIV",
    "display" : "Children of PLHIV"
  },
  {
    "code" : "Partners-Of-PLHIV",
    "display" : "Partners of PLHIV"
  },
  {
    "code" : "Discordant-Couples",
    "display" : "Discordant Couples"
  },
  {
    "code" : "Other-MARPS",
    "display" : "Other MARPS"
  },
  {
    "code" : "Female-Commercial-Sex-Workers",
    "display" : "Female Commercial Sex Workers"
  },
  {
    "code" : "Distance-Drivers",
    "display" : "Distance Drivers"
  },
  {
    "code" : "Mobile-Daily-Laborers",
    "display" : "Mobile or Daily Laborers"
  },
  {
    "code" : "OVC-AIDS-Orphaned",
    "display" : "OVC or AIDS Orphaned"
  },
  {
    "code" : "TG",
    "display" : "TG"
  },
  {
    "code" : "Refugee",
    "display" : "Refugee"
  },
  {
    "code" : "People-Who-Inject-Drug",
    "display" : "People who Inject drug"
  },
  {
    "code" : "MSM",
    "display" : "MSM"
  }]
}

```
