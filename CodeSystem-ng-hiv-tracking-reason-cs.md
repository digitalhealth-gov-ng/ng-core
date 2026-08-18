# NG HIV Tracking Register Reasons for Tracking - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Reasons for Tracking**

## CodeSystem: NG HIV Tracking Register Reasons for Tracking 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-reason-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingReasonCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.83 | |

 
Reason-for-tracking codes printed for T16. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register Reason for Tracking](ValueSet-ng-hiv-tracking-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-reason-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-reason-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.83"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingReasonCS",
  "title" : "NG HIV Tracking Register Reasons for Tracking",
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
  "description" : "Reason-for-tracking codes printed for T16.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "11a",
    "display" : "Intensive follow-up"
  },
  {
    "code" : "11b",
    "display" : "Missed appointment"
  },
  {
    "code" : "11c",
    "display" : "Missed pharmacy refill"
  },
  {
    "code" : "11d",
    "display" : "Lost to follow-up"
  },
  {
    "code" : "11e",
    "display" : "Other reason"
  }]
}

```
