# NG HIV Positive Tracking - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Positive Tracking**

## CodeSystem: NG HIV Positive Tracking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs | *Version*:0.0.0 |
| Active as of 2026-08-18 | *Computable Name*:NgHivPositiveTrackingCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.66 | |

 
Codes used for representing HIV positive tracking. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Local Concepts](ValueSet-ng-hiv-local-concepts.md)
* [NG HIV Positive Tracking Care Plan Activivity Codes](ValueSet-ng-hiv-tracking-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-positive-tracking-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-positive-tracking-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.66"
  }],
  "version" : "0.0.0",
  "name" : "NgHivPositiveTrackingCS",
  "title" : "NG HIV Positive Tracking",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-18T16:47:52+01:00",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "Codes used for representing HIV positive tracking.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "Started-ART",
    "display" : "Started ART"
  },
  {
    "code" : "Not-Started",
    "display" : "ART Not Started"
  },
  {
    "code" : "Final-Outcome",
    "display" : "Final Outcome"
  },
  {
    "code" : "Linked-To-Care",
    "display" : "Linked to care and treatment"
  }]
}

```
