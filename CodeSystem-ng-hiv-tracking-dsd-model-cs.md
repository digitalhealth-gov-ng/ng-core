# NG HIV Tracking Register DSD Model Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register DSD Model Codes**

## CodeSystem: NG HIV Tracking Register DSD Model Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-dsd-model-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingDsdModelCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.79 | |

 
High-level DSD model codes printed in T15. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register DSD Model](ValueSet-ng-hiv-tracking-dsd-model-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-dsd-model-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-dsd-model-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.79"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingDsdModelCS",
  "title" : "NG HIV Tracking Register DSD Model Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
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
  "description" : "High-level DSD model codes printed in T15.",
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
    "code" : "FBM",
    "display" : "Facility-based model"
  },
  {
    "code" : "CBM",
    "display" : "Community-based model"
  }]
}

```
