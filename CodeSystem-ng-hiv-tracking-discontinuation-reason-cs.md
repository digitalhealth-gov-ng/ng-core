# NG HIV Tracking Register Reasons for Discontinuation - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Reasons for Discontinuation**

## CodeSystem: NG HIV Tracking Register Reasons for Discontinuation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-discontinuation-reason-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingDiscontinuationReasonCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.78 | |

 
Reasons for discontinuing care at the facility printed for T26. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivTrackingDiscontinuationReasonVS](ValueSet-ng-hiv-tracking-discontinuation-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-discontinuation-reason-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-discontinuation-reason-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.78"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingDiscontinuationReasonCS",
  "title" : "NG HIV Tracking Register Reasons for Discontinuation",
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
  "description" : "Reasons for discontinuing care at the facility printed for T26.",
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
    "code" : "20a",
    "display" : "Treatment stopped"
  },
  {
    "code" : "20b",
    "display" : "Death"
  },
  {
    "code" : "20c",
    "display" : "Lost to follow-up"
  },
  {
    "code" : "20d",
    "display" : "Self-transfer to another facility"
  }]
}

```
