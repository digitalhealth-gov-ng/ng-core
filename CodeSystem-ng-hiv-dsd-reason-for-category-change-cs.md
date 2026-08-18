# HIV DSD - Reason For Category Change CodeSystem - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HIV DSD - Reason For Category Change CodeSystem**

## CodeSystem: HIV DSD - Reason For Category Change CodeSystem 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivDSDReasonForCategoryChangeCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.43 | |

 
Code used for indicating the reason for the category change for the DSD assessment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-dsd-reason-for-category-change-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-dsd-reason-for-category-change-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.43"
  }],
  "version" : "0.0.0",
  "name" : "NgHivDSDReasonForCategoryChangeCS",
  "title" : "HIV DSD - Reason For Category Change CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T06:18:50+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Code used for indicating the reason for the category change for the DSD assessment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "Returned",
    "display" : "Returned to Conventional Care"
  },
  {
    "code" : "Moved",
    "display" : "Moved to Other DSD Model"
  },
  {
    "code" : "TO",
    "display" : "TO"
  },
  {
    "code" : "Dead",
    "display" : "Dead"
  },
  {
    "code" : "Lost",
    "display" : "Lost"
  },
  {
    "code" : "Unknown",
    "display" : "Unknown"
  },
  {
    "code" : "Other",
    "display" : "Other"
  }]
}

```
