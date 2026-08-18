# NG HIV Tracking Register DSD Status Codes - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register DSD Status Codes**

## CodeSystem: NG HIV Tracking Register DSD Status Codes 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-dsd-status-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingDsdStatusCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.80 | |

 
High-level differentiated-service-delivery status codes printed in T15. The source register spells devolved as 'Devloved'; this artefact uses the intended spelling while preserving code D. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register DSD Status](ValueSet-ng-hiv-tracking-dsd-status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-dsd-status-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-dsd-status-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.80"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingDsdStatusCS",
  "title" : "NG HIV Tracking Register DSD Status Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-29",
  "publisher" : "NDHI",
  "contact" : [{
    "name" : "NDHI",
    "telecom" : [{
      "system" : "url",
      "value" : "https://digitalhealth.gov.ng"
    }]
  }],
  "description" : "High-level differentiated-service-delivery status codes printed in T15. The source register spells devolved as 'Devloved'; this artefact uses the intended spelling while preserving code D.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "D",
    "display" : "Devolved"
  },
  {
    "code" : "ND",
    "display" : "Non-devolved"
  },
  {
    "code" : "NE",
    "display" : "Not eligible"
  }]
}

```
