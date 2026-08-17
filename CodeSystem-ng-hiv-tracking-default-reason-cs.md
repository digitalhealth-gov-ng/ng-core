# NG HIV Tracking Register Reasons for Defaulting - Nigeria Core - FHIR Implementation Guide v0.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **NG HIV Tracking Register Reasons for Defaulting**

## CodeSystem: NG HIV Tracking Register Reasons for Defaulting 

| | |
| :--- | :--- |
| *Official URL*:https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-default-reason-cs | *Version*:0.0.0 |
| Active as of 2026-07-29 | *Computable Name*:NgHivTrackingDefaultReasonCS |
| *Other Identifiers:*OID:2.16.840.1.113884.3.9944.1.16.77 | |

 
Reasons recorded when successful contact establishes why the client missed the appointment. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [NG HIV Tracking Register Reason for Defaulting](ValueSet-ng-hiv-tracking-default-reason-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "ng-hiv-tracking-default-reason-cs",
  "url" : "https://fhir-ig.digitalhealth.gov.ng/CodeSystem/ng-hiv-tracking-default-reason-cs",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:2.16.840.1.113884.3.9944.1.16.77"
  }],
  "version" : "0.0.0",
  "name" : "NgHivTrackingDefaultReasonCS",
  "title" : "NG HIV Tracking Register Reasons for Defaulting",
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
  "description" : "Reasons recorded when successful contact establishes why the client missed the appointment.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "NG",
      "display" : "Nigeria"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "1",
    "display" : "Was sick"
  },
  {
    "code" : "2",
    "display" : "No transport fare"
  },
  {
    "code" : "3",
    "display" : "Transferred to a new site"
  },
  {
    "code" : "4",
    "display" : "Forgot"
  },
  {
    "code" : "5",
    "display" : "Felt better"
  },
  {
    "code" : "6",
    "display" : "Not permitted to leave work"
  },
  {
    "code" : "7",
    "display" : "Lost appointment card"
  },
  {
    "code" : "8",
    "display" : "Still had medicines"
  },
  {
    "code" : "9",
    "display" : "Taking herbal treatment"
  },
  {
    "code" : "10",
    "display" : "Intensive follow-up"
  },
  {
    "code" : "11",
    "display" : "Other reason"
  }]
}

```
