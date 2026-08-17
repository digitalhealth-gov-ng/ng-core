# HIV ARV Regimen Change Category - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV ARV Regimen Change Category**

## CodeSystem: HIV ARV Regimen Change Category 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-change-category-cs | *Version*:0.0.0 |
| Active as of 2026-08-17 | *Computable Name*:NgHivARVRegimenChangeCategoryCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.29 | |

 
Codes used for representing the category for the ARV regimen change. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [HIV ARV Regimen Change Category](ValueSet-ng-hiv-arv-regimen-change-category-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-arv-regimen-change-category-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-arv-regimen-change-category-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.29"
  }],
  "version" : "0.0.0",
  "name" : "NgHivARVRegimenChangeCategoryCS",
  "title" : "HIV ARV Regimen Change Category",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-17T16:10:29+01:00",
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
  "description" : "Codes used for representing the category for the ARV regimen change.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "Switched",
    "display" : "Switched"
  },
  {
    "code" : "Substituted",
    "display" : "Substituted"
  }]
}

```
