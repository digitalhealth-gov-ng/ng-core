# NG HIV Tracking Register Attempt Stages - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Attempt Stages**

## CodeSystem: NG HIV Tracking Register Attempt Stages 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-attempt-stage-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingAttemptStageCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.76 | |

 
The four numbered tracking attempts and the final attempt at the end of the tracking period represented by columns T19–T23. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NgHivTrackingAttemptStageVS](ValueSet-ng-hiv-tracking-attempt-stage-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-attempt-stage-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-attempt-stage-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.76"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingAttemptStageCS",
  "title" : "NG HIV Tracking Register Attempt Stages",
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
  "description" : "The four numbered tracking attempts and the final attempt at the end of the tracking period represented by columns T19–T23.",
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
    "code" : "1",
    "display" : "First tracking attempt"
  },
  {
    "code" : "2",
    "display" : "Second tracking attempt"
  },
  {
    "code" : "3",
    "display" : "Third tracking attempt"
  },
  {
    "code" : "4",
    "display" : "Fourth tracking attempt"
  },
  {
    "code" : "end",
    "display" : "Final attempt at the end of the tracking period"
  }]
}

```
