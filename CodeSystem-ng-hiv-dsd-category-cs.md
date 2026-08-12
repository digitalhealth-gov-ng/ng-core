# HIV DSD - Category CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV DSD - Category CodeSystem**

## CodeSystem: HIV DSD - Category CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-12 | *Computable Name*:NgHivDSDCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.42 | |

 
Code used for indicating the category for the DSD assessment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivDSDCategoryVS](ValueSet-ng-hiv-dsd-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-dsd-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.42"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDSDCategoryCS",
  "title" : "HIV DSD - Category CodeSystem",
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
  "description" : "Code used for indicating the category for the DSD assessment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "ASM-6MMD",
    "display" : "Appointment Spacing Model (ASM)/6MMD"
  },
  {
    "code" : "3MMD",
    "display" : "3MMD"
  },
  {
    "code" : "FTAR",
    "display" : "FTAR(Fast Track ART Refill)"
  },
  {
    "code" : "HEP-CAG",
    "display" : "HEP-CAG(Health Extension Professional Led Community"
  },
  {
    "code" : "PCAD",
    "display" : "PCAD (Community Based Group model led by Peer)"
  },
  {
    "code" : "AHD",
    "display" : "AHD (Advanced HIV Disease Model)"
  },
  {
    "code" : "DSD-for-Adolescent",
    "display" : "DSD for Adolescent"
  },
  {
    "code" : "DSD-for-MCH",
    "display" : "DSD for MCH"
  },
  {
    "code" : "KP-DSD",
    "display" : "KP_DSD"
  },
  {
    "code" : "Other",
    "display" : "Other"
  }]
}

```
